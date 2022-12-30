import Dashboard from "./components/dashboard/";
import Home from "./components/home";
import Login from "./components/login";
import { BrowserRouter as Router, Routes, Route} from "react-router-dom"
import Register from "./components/register";

const App = () => {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<Home title="Home Page" />} />
        <Route path="/dashboard" element={<Dashboard title="DASHBOARD" />} />
        <Route path="/login" element={<Login title="Login Kuy" description = "Mini Absensi Apps"/>} />
        <Route path="/register" element={<Register title="Daftar Kuy" description = "Daftar Akun untuk Absensi"/>} />
        <Route path="*" element={<h1>page not found</h1>}/>
      </Routes>
    </Router>
  );
}

export default App;
