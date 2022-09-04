<table>
    <thead>
        <tr>
            <th>তারিখ</th>
            <th>ম্যামো নং</th>
            <th>সারের নাম</th>
            <th>সারের পরিমাণ</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($Products as $Product)
            <tr>

                <td>{{ $Product->buying_date }}</td>
                <td>{{ $Product->memoNong }}</td>
                <td>{{ $Product->categorys->category_name }}</td>
                <td>{{ $Product->product_quantity }} {{ $Product->type }}</td>



            </tr>
        @endforeach
    </tbody>
</table>
