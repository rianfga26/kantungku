
import Banner from "../../assets/home/demoapk.png";
import Track from "../../assets/fitur/track.png";
import Budget from "../../assets/fitur/budget.png";
import AiSist from "../../assets/fitur/ai.png";
import Card from "../card";
import AppLayout from "../template/AppLayout";
import CardFounder from "../cardFounder";
import Galeh from "../../assets/founder/galeh.jpg";
import Rio from "../../assets/founder/rio.jpg";
import Rian from "../../assets/founder/rian.jpg";

export default function Home() {
  return (
    <AppLayout>
      {/* Hero */}
      <div className="hero min-h-screen bg-base p-16">
        <div className="hero-content flex-col-reverse lg:flex-row-reverse">
          <img src={Banner} className="max-w-sm rounded-lg " />
          <div>
            <h1 className="text-5xl font-bold text-primary">
              Financial Tracker that Understands You
            </h1>
            <p className="py-6 ">
              Kantungku is here as a smart solution for managing your finances.
              With this application, you can track expenses, record income,
              create a budget, and achieve financial goals easily and
              pleasantly.
            </p>
            <div className="join">
              <input
                type="email"
                className="input input-bordered w-full max-w-xl join-item"
              />
              <button className="btn btn-primary join-item text-xl text-white capitalize">
                join waitlist
              </button>
            </div>
          </div>
        </div>
      </div>
      {/* Feature */}
      <div className="hero min-h-screen bg-base p-16">
        <div className="hero-content w-full flex-col lg:flex-row">
          <div className="flex flex-col w-full ">
            <p className="text-2xl font-bold">
              Explore Our <br />
              Awesome <span className="text-primary">Features</span>
            </p>
            <p className="text-xl">
              Discover the Unique Advantages That Set Us Apart
            </p>
          </div>
          <div className="grid grid-cols-1 md:grid-cols-2 gap-4 w-full">
            <Card title="tracking" image={Track}>
              <p>
                Detailed expense reports help you track progress and achieve
                financial goals more easily.
              </p>
            </Card>
            <Card title="budgeting" image={Budget}>
              <p>Group your budget easily using Kantungku</p>
            </Card>
            <Card title="AI assistant" image={AiSist}>
              <p>
                Kantungku AI Assistant makes personal finance fun and easy to
                understand.
              </p>
            </Card>
            <div className="flex items-center">more to come...</div>
          </div>
        </div>
      </div>
      {/* Team */}
      <div className="hero min-h-screen bg-base p-16">
        <div className="hero-content flex-col w-full">
          <p className="text-2xl font-bold">
            Our <span className="text-primary">Executive Team</span>
          </p>
          <p className="text-xl">
            Meet the Visionary People Driving Our Success
          </p>
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 w-full gap-4">
            <CardFounder
              name="Galeh Ariya Irwana"
              title="Founder"
              image={Galeh}
            >
              <p>With passion of innovation and drive to make different, he lead the team to achieve the vision of kantungku. 
              </p>
            </CardFounder>
            <CardFounder
              name="Rio Rizki Rodianto"
              title="Bussiness Director"
              image={Rio}
            >
              <p>Guiding kantungku through dynamic market and strategic planning to make sure our operation and our goals are met.</p>
            </CardFounder>
            <CardFounder
              name="Rian Firgiawan Gusti Ananda"
              title="Technology Director"
              image={Rian}
            >
              <p>Kantungku tech wizard with creative problem solving and experience with cutting-edge technology push our product for the better.</p>
            </CardFounder>
          </div>
        </div>  
      </div>
      {/* Contact Us */}
      <div className="hero min-h-screen bg-base p-16">
        <div className="hero-content flex-col w-full">
            <p className="text-3xl font-semibold"><span className="text-primary font-bold">Chat</span> to our friendly team</p>
            <div className="flex justify-around space-x-24 mt-12">
                <div className="text-center">
                   <span className="w-36 h-36 bg-primary rounded-full p-2">📧</span>
                   <p>Our team is ready to help you</p>  
                   <p>halo@kantungku.id</p>
                </div>
                <div className="text-center">
                <span className="w-36 h-36 bg-primary rounded-full p-2">📞</span>
                   <p>Our team is ready to help you</p>  
                   <p>+62 8580-6926-548</p>
                </div>
            </div>
            <span className="bg-primary rounded-full p-2 mt-12">🪧</span>
            <p className="w-80 text-center">Address: Penambangan Plumpang Balongbendo Sidoarjo Jawa timur 61623 Indonesia</p>
        </div>
      </div>
    </AppLayout>
  );
}
