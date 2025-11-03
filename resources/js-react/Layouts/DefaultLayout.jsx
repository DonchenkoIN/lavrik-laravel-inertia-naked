import {Link} from "@inertiajs/react";

export default function DefaultLayout({ children }) {
    return <>
        <div>header
            <hr/>
        </div>
        <div>nav
            <Link href="/">Home</Link>
            <Link href="/other">Other</Link>
            <hr/>
        </div>
        <div>
            { children }
            <hr/>
        </div>

        <div>footer
        </div>
    </>
}
