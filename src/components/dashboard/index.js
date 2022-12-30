import { useEffect, useState } from "react";
import { Badge, Container } from "react-bootstrap";
import axios from "axios";
import Navbar from "./navbar";
import Edit from "./edit";

const Dashboard = ({ title }) => {
  const [absensiList, setAbsensiList] = useState([]);
  const [absenNotif, setabsenNotif] = useState(false)

  useEffect(() => {
    if (!localStorage.getItem("name") && !localStorage.getItem("nip")) {
      console.log("user belum login");
      window.location.replace("/login");
    }
    axios({
      method: "GET",
      url: "http://localhost:3200/absensi",
    }).then((result) => setAbsensiList(result.data.absensi));
  }, [absenNotif]);

  const absen = (params) => {
    const requestingData = {
      nip: localStorage.getItem("nip")
    }
    axios({
      method: "POST",
      url: `http://localhost:3200/absensi/${params}`,
      data: requestingData
    }).then(() => {
      setabsenNotif(!absenNotif)
    })
  }

  return (
    <Container>
      <main className="col-md-12 ms-sm-auto col-lg-12 px-md-4">
        <Navbar />
        <h2>{title}</h2>
        <div>
          <p>Hello {localStorage.getItem("nama")}!</p>
          <p>NIP : {localStorage.getItem("nip")}</p>
        <Edit title="Edit Profile" />
        </div>
        <div className="table-responsive">
          <table className="table table-striped table-sm">
            <thead>
              <tr>
                <th scope="col">No</th>
                <th scope="col">NIP</th>
                <th scope="col">Status</th>
                <th scope="col">Tanggal</th>
              </tr>
            </thead>
            <tbody>
              {absensiList.map((absensi, i) => {
                const { users_nip, status, createdAt } = absensi;
                return (
                  <tr key={i}>
                    <td>{i + 1}</td>
                    <td>{users_nip}</td>
                    <td>{status}</td>
                    <td>{createdAt}</td>
                  </tr>
                );
              })}
            </tbody>
          </table>
        </div>
        <div className="d-flex justify-content-center gap-2">
        <Badge bg="primary" style={{ cursor : "pointer" }} onClick={() => absen("checkin") }>
        Checkin
      </Badge>
      <Badge bg="danger" style={{ cursor : "pointer" }} onClick={() => absen("checkout") }>
        Checkout
      </Badge>
        </div>
      </main>
    </Container>
  );
};
export default Dashboard;
