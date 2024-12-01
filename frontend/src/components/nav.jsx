import React from 'react'

function nav() {
  return (
    <nav className='flex justify-around bg-sky-700 text-white py-2 font-mono'>
        <div className="logo">
            <span className="font-bold text-3xl mx-8">Library</span>
            </div>
        <ul className='flex gap-5 font-bold mt-1 text-xl'>
          <li>Home</li>
          <li>User</li>
        </ul>
    </nav>
  )
}

export default nav
