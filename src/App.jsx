
import Nav from "./components/nav"
import { Table,TableBody,
  TableCaption,
  TableCell,
  TableFooter,
  TableHead,
  TableHeader,
  TableRow, } from "./components/ui/table"

function App() {

  const users = [
    {
      BookId:"1",
      Name:"Shinra",
      PhoneNumber:"983719194",
      Amount:`$300`,
    },
    {
      BookId:"1",
      Name:"Shinra",
      PhoneNumber:"983719194",
      Amount:`$300`,
    },
    {
      BookId:"1",
      Name:"Shinra",
      PhoneNumber:"983719194",
      Amount:`$300`,
    },
    {
      BookId:"1",
      Name:"Shinra",
      PhoneNumber:"983719194",
      Amount:`$300`,
    },
    {
      BookId:"1",
      Name:"Shinra",
      PhoneNumber:"983719194",
      Amount:`$300`,
    },
    {
      BookId:"1",
      Name:"Shinra",
      PhoneNumber:"983719194",
      Amount:`$300`,
    },
    {
      BookId:"1",
      Name:"Shinra",
      PhoneNumber:"983719194",
      Amount:`$300`,
    },
    {
      BookId:"1",
      Name:"Shinra",
      PhoneNumber:"983719194",
      Amount:`$300`,
    },
  ]
  
  const invoices = [
    {
      BookName: "Fire-Force",
      BookAuther: "Atsushi Ohkubo",
      BookId: "1",
      Publisher: "Kodansha",
      Stock: "30",
      Amount: `$300`,
    },
    {
      BookName: "Fire-Force",
      BookAuther: "Atsushi Ohkubo",
      BookId: "1",
      Publisher: "Kodansha",
      Stock: "30",
      Amount: `$300`,
    },
    {
      BookName: "Fire-Force",
      BookAuther: "Atsushi Ohkubo",
      BookId: "1",
      Publisher: "Kodansha",
      Stock: "30",
      Amount: `$300`,
    },
    {
      BookName: "Fire-Force",
      BookAuther: "Atsushi Ohkubo",
      BookId: "1",
      Publisher: "Kodansha",
      Stock: "30",
      Amount: `$300`,
    },
    {
      BookName: "Fire-Force",
      BookAuther: "Atsushi Ohkubo",
      BookId: "1",
      Publisher: "Kodansha",
      Stock: "30",
      Amount: `$300`,
    },
    {
      BookName: "Fire-Force",
      BookAuther: "Atsushi Ohkubo",
      BookId: "1",
      Publisher: "Kodansha",
      Stock: "30",
      Amount: `$300`,
    },
    {
      BookName: "Fire-Force",
      BookAuther: "Atsushi Ohkubo",
      BookId: "1",
      Publisher: "Kodansha",
      Stock: "30",
      Amount: `$300`,
    },
    {
      BookName: "Fire-Force",
      BookAuther: "Atsushi Ohkubo",
      BookId: "1",
      Publisher: "Kodansha",
      Stock: "30",
      Amount: `$300`,
    },
    
  ]
  return (
    <>
    <Nav/>
      <div className="container md:mx-auto my-5 rounded-xl p-5 bg-sky-200 min-h-[80vh] md:w-1/2 font-mono">
      <h1 className='font-bold text-center text-3xl'>Manage Sending And Lending Books</h1>
        <div className=" my-2 flex flex-col gap-2">
          <h2 className=" font-bold text-center text-2xl">All Books</h2>  
        </div>


    <Table>
      <TableCaption>Hope you enjoy our collection.......</TableCaption>
      <TableHeader>
        <TableRow>
          <TableHead className="w-[200px]">BookName</TableHead>
          <TableHead className="w-[200px]">BookAuther</TableHead>
          <TableHead>BookId</TableHead>
          <TableHead>Publisher</TableHead>
          <TableHead>Stock</TableHead>
          <TableHead className="text-right">Amount</TableHead>
        </TableRow>
      </TableHeader>
      <TableBody>
        {invoices.map((invoice) => (
          <TableRow key={invoice.invoice}>
            <TableCell className="font-medium">{invoice.BookName}</TableCell>
            <TableCell>{invoice.BookAuther}</TableCell>
            <TableCell>{invoice.BookId}</TableCell>
            <TableCell>{invoice.Publisher}</TableCell>
            <TableCell>{invoice.Stock}</TableCell>
            <TableCell className="text-right">{invoice.Amount}</TableCell>
          </TableRow>
        ))}
      </TableBody>
    </Table>





    <h1 className='font-bold text-center text-3xl'>Our Lendings and Records.......</h1>






    <Table>
      <TableCaption>Please Visit Us Again.......</TableCaption>
      <TableHeader>
        <TableRow>
          <TableHead>BookId</TableHead>
          <TableHead>Name</TableHead>
          <TableHead>PhoneNumber</TableHead>
          <TableHead className="text-right">Amount</TableHead>
        </TableRow>
      </TableHeader>
      <TableBody>
        {users.map((user) => (
          <TableRow key={user.user}>
            <TableCell>{user.BookId}</TableCell>
            <TableCell>{user.Name}</TableCell>
            <TableCell>{user.PhoneNumber}</TableCell>
            <TableCell className="text-right">{user.Amount}</TableCell>
          </TableRow>
        ))}
      </TableBody>
      <TableFooter>
        <TableRow>
          <TableCell colSpan={3}>Total</TableCell>
          <TableCell className="text-right">$2,400.00</TableCell>
        </TableRow>
      </TableFooter>
    </Table>
      </div>
    </>
  )
}

export default App
