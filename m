Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5407514C7A
	for <lists+usrp-users@lfdr.de>; Mon,  6 May 2019 16:41:12 +0200 (CEST)
Received: from [::1] (port=58672 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hNenk-0004Wc-9c; Mon, 06 May 2019 10:41:08 -0400
Received: from mail-qt1-f179.google.com ([209.85.160.179]:40650)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <zenghuacheng@gmail.com>)
 id 1hNenC-0004Ms-R2
 for usrp-users@lists.ettus.com; Mon, 06 May 2019 10:41:04 -0400
Received: by mail-qt1-f179.google.com with SMTP id k24so11148309qtq.7
 for <usrp-users@lists.ettus.com>; Mon, 06 May 2019 07:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=D21E5POfaKqQewRQcoFNjdzbDhiP7+WVoFhDiQde570=;
 b=H2Iur1dNVK9Z/OYP5mb2Kj0ZxbjDBC6QB2QUOjYvPhcTfYpERkNqqUeZHKdJCudcB2
 wFI7R+M+IDfbemhbQpycxa5EJT0+ana9NNh5/fpSVFR6Wmlhkr9moURFz8KsGw2gV5qg
 fkp4YKlDwSU7E9HfQrqYGnPBigvTov5YfHo4qy7IxQ559zkw780KLrcalNUZXZ8+03Zc
 bUi+8/uppk880VrnoIRa0Gm7N2GPpX56qglzs59/T4Zk96mFvGn91SNSPFlnb2C29lAY
 saP7WLeXXGEoApcI5wgNEzuF/YEZgklVdzR0vRxJmvnLEMRYM7vuq2BFa2DVqAU5Ghvv
 0eFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=D21E5POfaKqQewRQcoFNjdzbDhiP7+WVoFhDiQde570=;
 b=a4ZbtgFjDHQ+rENAe4+lIUzVFP8W2oRpEbZo04cPRfx8Wb2Zx6vkqxpM5ayl4ChN9N
 KiQF1JZRI6+ojiYO7BXerNqOpdWV8+L31UsW6LmKbDBQPAszTocnCFdGP/yI9UMIxWxt
 fnv2dyFDe5/4vkXX94o03tTWQjdQdBDtvBZA3UTFvlLZyY/4Rd16WVlCJb6wa+Bdetdk
 RfnV7NyfVFKTZ8b1I4ytQQDVa0sb9WsIxCAvDKNbU5t3hfdEjhj2FAHFMVgRprz4wR8z
 XU7gjxYDgf2EbSC70z00Q1AlX6HHJDNxAGvz8hVD0TYQhcX/sTkbDgyeIrmOYJlcLgYv
 hGJg==
X-Gm-Message-State: APjAAAXr8fdBsD48ul5WtDsgLVMxGACBXHk5vi4NZGPQiqTCLq/koJw8
 plHZKqTAY/TTrSeVlEc/3q4xQakB9gA6TsqurbkfIXHFmKI=
X-Google-Smtp-Source: APXvYqyJ3caEclW0psaZYV/+XFTUsqTKuA0iWfdv1DYI5GjbaHg9uzCIyt7Rt91TQ7rX6JV6kQliqWGlaNOW43IuB0k=
X-Received: by 2002:ac8:7a85:: with SMTP id x5mr13194471qtr.0.1557153593892;
 Mon, 06 May 2019 07:39:53 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 6 May 2019 10:39:43 -0400
Message-ID: <CAOR0_ujmQ3poAON=sxihVFa7-+dgOcRdAOWAYuUvzm7MQj5EyQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] Bursty packet transmission
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Huacheng Zeng via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Huacheng Zeng <zenghuacheng@gmail.com>
Content-Type: multipart/mixed; boundary="===============7393810730862433449=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============7393810730862433449==
Content-Type: multipart/alternative; boundary="000000000000d3291e0588391254"

--000000000000d3291e0588391254
Content-Type: text/plain; charset="UTF-8"

Hi,

I am using USRP N210 for bursty packet transmission, and have difficulty to
understand "tx_md.end_of_burst = true" in C++ code. I am attaching my code
at the end and hope someone can help.

The problem is:
1. when I comment out "tx_md.end_of_burst = true" and use the function for
transmission periodically, my receiver can decode the packet successfully.
But it seems that it can only detect N - 1 packet, where N is the number of
packets that I sent at the transmitter. For example, when I send 3 packets,
the receiver can only decode 2 packets, and so forth. Not sure what is the
reason behind this.

2. When I uncomment "tx_md.end_of_burst = true" (either the one inside the
WHILE loop or outside one), my receiver cannot decode the packets anymore.
When I use spectrum analyzer to see the signal, I can see that the
transmitter does send the signal into the air and the waveform shape looks
right. However, the signal cannot be decoded.


Any suggestions?

Thank you!

Hua





=========================

size_t sdr_dev::usrp_transmit(vector<complex<float>*> tx_buff_ptr, size_t
requested_num_samps) {

    tx_md.start_of_burst = true;
    tx_md.end_of_burst = false;
    tx_md.has_time_spec = false;
    tx_md.time_spec = uhd::time_spec_t(1.0); //0.1

    //the first call to send() will block this many seconds before sending:
    timeout = seconds_in_future + 0.1; //timeout (delay before transmit +
padding)

    vector<complex<float>*> tx_buff_ptr_tmp = tx_buff_ptr;

    size_t acc_num_samps = 0; //number of accumulated samples
    size_t total_num_samps = requested_num_samps;
    while(acc_num_samps < total_num_samps) {
        size_t samps_to_send = total_num_samps - acc_num_samps;
        if (samps_to_send > tx_max_num_samps) {
            samps_to_send = tx_max_num_samps;
        }
        else {
            //tx_md.end_of_burst = true;
        }

        for (int i = 0; i < tx_buff_ptr.size(); i++) tx_buff_ptr_tmp[i] =
&tx_buff_ptr[i][acc_num_samps];

        //send a single packet
        size_t num_tx_samps = tx_stream->send(tx_buff_ptr_tmp,
samps_to_send, tx_md, timeout);

        //do not use time spec for subsequent packets
        tx_md.has_time_spec = false;
        tx_md.start_of_burst = false;

        acc_num_samps += num_tx_samps;
    }

    //tx_md.end_of_burst = true;
    tx_stream->send("", 0, tx_md);

    return acc_num_samps;
}
==============================

--000000000000d3291e0588391254
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi, <br></div><div><br></div><div>I =
am using USRP N210 for bursty packet transmission, and have difficulty to u=
nderstand &quot;tx_md.end_of_burst =3D true&quot; in C++ code. I am attachi=
ng my code at the end and hope someone can help.</div><div><br></div><div>T=
he problem is: <br></div><div>1. when I comment out &quot;tx_md.end_of_burs=
t =3D true&quot; and use the function for transmission periodically, my rec=
eiver can decode the packet successfully. But it seems that it can only det=
ect N - 1 packet, where N is the number of packets that I sent at the trans=
mitter. For example, when I send 3 packets, the receiver can only decode 2 =
packets, and so forth. Not sure what is the reason behind this. <br></div><=
div><br></div><div>2. When I uncomment &quot;tx_md.end_of_burst =3D true&qu=
ot; (either the one inside the WHILE loop or outside one), my receiver cann=
ot decode the packets anymore. When I use spectrum analyzer to see the sign=
al, I can see that the transmitter does send the signal into the air and th=
e waveform shape looks right. However, the signal cannot be decoded. <br></=
div><div><br></div><div><br></div><div>Any suggestions?</div><div><br></div=
><div>Thank you!</div><div><br></div><div>Hua<br></div><div><br></div><div>=
<br></div><div><br></div><div><br></div><div><br></div><div>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div><br>=
size_t sdr_dev::usrp_transmit(vector&lt;complex&lt;float&gt;*&gt; tx_buff_p=
tr, size_t requested_num_samps) {<br><br>=C2=A0=C2=A0=C2=A0 tx_md.start_of_=
burst =3D true;<br>=C2=A0=C2=A0=C2=A0 tx_md.end_of_burst =3D false;<br>=C2=
=A0=C2=A0=C2=A0 tx_md.has_time_spec =3D false;=C2=A0=C2=A0 <br>=C2=A0=C2=A0=
=C2=A0 tx_md.time_spec =3D uhd::time_spec_t(1.0); //0.1=C2=A0 <br><br>=C2=
=A0=C2=A0=C2=A0 //the first call to send() will block this many seconds bef=
ore sending:<br>=C2=A0=C2=A0=C2=A0 timeout =3D seconds_in_future + 0.1; //t=
imeout (delay before transmit + padding)<br><br>=C2=A0=C2=A0=C2=A0 vector&l=
t;complex&lt;float&gt;*&gt; tx_buff_ptr_tmp =3D tx_buff_ptr;<br><br>=C2=A0=
=C2=A0=C2=A0 size_t acc_num_samps =3D 0; //number of accumulated samples<br=
>=C2=A0=C2=A0=C2=A0 size_t total_num_samps =3D requested_num_samps;<br>=C2=
=A0=C2=A0=C2=A0 while(acc_num_samps &lt; total_num_samps) {<br>=C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 size_t samps_to_send =3D total_num_samps - acc_nu=
m_samps;<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if (samps_to_send &gt; tx=
_max_num_samps) {<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 samps_to_send =3D tx_max_num_samps;<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 } <br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 else {<br>=C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 //tx_md.end_of_burst =3D true;=
<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 }<br><br>=C2=A0=C2=A0=C2=A0 =C2=
=A0=C2=A0=C2=A0 for (int i =3D 0; i &lt; tx_buff_ptr.size(); i++) tx_buff_p=
tr_tmp[i] =3D &amp;tx_buff_ptr[i][acc_num_samps];<br><br>=C2=A0=C2=A0=C2=A0=
 =C2=A0=C2=A0=C2=A0 //send a single packet<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=
=A0=C2=A0 size_t num_tx_samps =3D tx_stream-&gt;send(tx_buff_ptr_tmp, samps=
_to_send, tx_md, timeout);<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 <br>=C2=
=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 //do not use time spec for subsequent pa=
ckets<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 tx_md.has_time_spec =3D fals=
e;<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 tx_md.start_of_burst =3D false;=
<br><br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 acc_num_samps +=3D num_tx_sam=
ps;<br>=C2=A0=C2=A0=C2=A0 }<br>=C2=A0=C2=A0=C2=A0 <br>=C2=A0=C2=A0=C2=A0 //=
tx_md.end_of_burst =3D true;<br>=C2=A0=C2=A0=C2=A0 tx_stream-&gt;send(&quot=
;&quot;, 0, tx_md);<br>=C2=A0=C2=A0=C2=A0 <br>=C2=A0=C2=A0=C2=A0 return acc=
_num_samps;<br>}<br></div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br></div><div><br></div><d=
iv><br></div><div><br></div></div></div>

--000000000000d3291e0588391254--


--===============7393810730862433449==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7393810730862433449==--

