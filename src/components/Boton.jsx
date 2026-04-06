import React, { useState } from 'react';

export default function Boton() {
    const [contador, setContador] = useState(0);

    return (
        <div className="p-6 max-w-sm mx-auto bg-white rounded-xl shadow-lg flex flex-col items-center border border-gray-200 mt-10">
            <h2 className="text-2xl font-bold text-slate-800 mb-2">React</h2>
            <p className="text-slate-500 mb-6 text-center">
                Astro, React, TailwindCSS.
            </p>
            <button
                onClick={() => setContador(contador + 1)}
                className="px-6 py-2 font-semibold text-white bg-blue-600 rounded-lg hover:bg-blue-700 active:scale-95 transition-all"
            >
                Me has clicado {contador} veces
            </button>
        </div>
    );
}