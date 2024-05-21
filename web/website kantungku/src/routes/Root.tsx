import {
  createBrowserRouter,
  RouterProvider,
} from "react-router-dom";
import '../App.css'
import Home from "../components/home/Home";
import Blog from "../components/blog/Blog";

const router = createBrowserRouter([
  {
    path: "/",
    element: <Home />
  },
])

export default function Root() {
    return(
      <>
        <RouterProvider router={router} />
      </>
    );
}