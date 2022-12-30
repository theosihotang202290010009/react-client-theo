import { Button } from "react-bootstrap"
import {logout} from './logout'

const Navbar = () => {
    return (
        <div className="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 className="h2">{localStorage.getItem("nama")}</h1>
        <Button
          onClick={() => logout()}
          size="sm"
          variant="danger"
        >
          Logout
        </Button>
        </div>
        
    )
}

export default Navbar