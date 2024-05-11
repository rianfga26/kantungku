import {
  createBrowserRouter,
  RouterProvider,
} from "react-router-dom";
import '../App.css'
import Home from "../components/home/Home";
import Fitur from "../components/feature/Fitur";

const router = createBrowserRouter([
  {
    path: "/",
    element: <Home />
  },
  {
    path: "/fitur",
    element: <Fitur />
  },
  {
    path: "/blog",
  }
])

export default function Root() {
    return(
      <>
        <RouterProvider router={router} />
      </>
    );
}