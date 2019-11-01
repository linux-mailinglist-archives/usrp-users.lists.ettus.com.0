Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4F6EC895
	for <lists+usrp-users@lfdr.de>; Fri,  1 Nov 2019 19:39:11 +0100 (CET)
Received: from [::1] (port=36464 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iQbpG-00011c-1d; Fri, 01 Nov 2019 14:39:10 -0400
Received: from mail-lf1-f47.google.com ([209.85.167.47]:38469)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jlockhartrt@gmail.com>)
 id 1iQbpC-0000rp-Jd
 for usrp-users@lists.ettus.com; Fri, 01 Nov 2019 14:39:06 -0400
Received: by mail-lf1-f47.google.com with SMTP id q28so7921703lfa.5
 for <usrp-users@lists.ettus.com>; Fri, 01 Nov 2019 11:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O9tlU74uTdWGmjZxBYA1PtuaRhy/na00/tAwaD70/ZE=;
 b=AyJMxSkMfDGa9H/yYz7dIoonrRHTtU4Ul+GkMn/oNQGjrUUdE1dmQ3QE4tJmWDR9hU
 ycx0nRAy3nhcjlhlZfrbBa12xr+y1KXf9AsE+rxkLz7//tUJqCO/sMw1HIZ7eNVfXL1d
 yFnLI5qtdkyCbrBjX/QEJ/crg/5dZsFs5/YHN8rpGLB19ckFvcjVdOt4lB2Kke3X2ONM
 YKIMnkyGJ/CV/G9Q2A3Gqe7xALY986JjtyC5trUCUKmDOv2Y19iHl77oH9MqOyxbjEIl
 GqA5H4vb+3M6xoWfxSKmapbjeS7o4xcdooxXCmNIPVnOPeX+p7ctaZfrbBJ/NPseBeSb
 rwlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O9tlU74uTdWGmjZxBYA1PtuaRhy/na00/tAwaD70/ZE=;
 b=YnCK4EFp68nxVpoZbZfvzNSpoNOKqI5iE8Mxqbn1b2DjthgsIEZbA941ROofn7Q+sC
 qBtGzg+RI54l6A2VYyLx6kgShWsADy9SLxsEZ5P0fbEd3vWvvhcYa28POBkk8N8HWuAv
 hQw3FlS5iKWxh8ofDbmFc5GCA9LcSHUJeaaE1sfP8kvQSfGqDiW08CgR/dfvNTPVfIY2
 Unr2xZfTzd2TuVdXoalPJqRZy8t3/L6PBZcAPOYhaZpSDsLM8UKhq4GlndUFfDOhfgsV
 /6YUmQH047h/M9O0P0h3SJFW7NyAdWjgPNAe8jD9sKcP5CL/tg77hoabYmxnt1W5rpxw
 NIIQ==
X-Gm-Message-State: APjAAAWv8x60bO+LGMeTRUZl4aRQaVUAp4tgLSNDpydki8iJNNLOYfoo
 DZDqjf5IIZZhRR/JH9R51Wpm9oMUUpIjSOuwh1s=
X-Google-Smtp-Source: APXvYqywdQLaD/ldc767L3a2sQORfrjWQGXMdTmA3mXR81mq9sGsDZkaj8sXWrlyXTTRHzi4H6GerwDXFtXTp+KF83Y=
X-Received: by 2002:a19:750:: with SMTP id 77mr8112164lfh.81.1572633505351;
 Fri, 01 Nov 2019 11:38:25 -0700 (PDT)
MIME-Version: 1.0
References: <CALY+5sK8VYxWGiOsX7XSw7ScxLkKKhWtNm66U=OdfxEFCyqKYw@mail.gmail.com>
 <CALY+5sJ+1kZzKHUziCUk=ibby1nzZa_voOhXQFYVe2rbyN4jrg@mail.gmail.com>
 <BL0PR12MB2340C7DB13B69397120EC83DAF620@BL0PR12MB2340.namprd12.prod.outlook.com>
In-Reply-To: <BL0PR12MB2340C7DB13B69397120EC83DAF620@BL0PR12MB2340.namprd12.prod.outlook.com>
Date: Fri, 1 Nov 2019 14:38:13 -0400
Message-ID: <CALY+5sLkFY+PTY271SDye7=Fyt3Rm_JBRkLO2mWOARG82RnNnQ@mail.gmail.com>
To: Jason Matusiak <jason@gardettoengineering.com>
Subject: Re: [USRP-users] RFNoC Radio Issue
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
From: Jonathan Lockhart via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathan Lockhart <jlockhartrt@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3454600049319511891=="
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

--===============3454600049319511891==
Content-Type: multipart/alternative; boundary="00000000000072ca7105964d453c"

--00000000000072ca7105964d453c
Content-Type: text/plain; charset="UTF-8"

Greetings Jason,

I will give that a look. Seems like that is a change in the rfnoc block
verilog and not the Python, so I can handle that if I find it.

I am currently in 3.14.1.0 because that is the os version I am running. If
I try 3.15 it errors out on the E312 bc the SD card image is missing
necessary installed files. I have yet to venture into docker to try and
build my own image.

Do you know if this is corrected in the 3.14.1.1 release?

Regards,
Jon Lockhart

On Fri, Nov 1, 2019, 2:11 PM Jason Matusiak <jason@gardettoengineering.com>
wrote:

> Jonathon, If you look at the more recent commits for UHD, they added in a
> fix to the split_stream error.  Basically you need to change a 1'b1 to a
> 2'b11 in the noc_shell section (I think that is the section, I can't recall
> off the top of my head).  Try that and rebuild.
>
> ------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
> Jonathan Lockhart via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Thursday, October 31, 2019 3:30 PM
> *To:* USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>;
> support@ettus.com <support@ettus.com>
> *Subject:* Re: [USRP-users] RFNoC Radio Issue
>
> Apologies, the files are attached.
>
> On Thu, Oct 31, 2019 at 3:30 PM Jonathan Lockhart <jlockhartrt@gmail.com>
> wrote:
>
> Greetings,
>
> I was wondering if anyone else has had this issue with the RFNoC radio
> block.
>
> So I was using the copy block with the rfnoc_fosphor_network_usrp.grc file
> as I wanted to split off the signal before it went off to the RFNoC Window.
> So I put in a copy block (since the RFNoC Split block appears to be broken)
> and passed the data off to a ZMQ Push and back to the window to continue to
> be processed by the FPGA. GNURadio says this is all well and good since all
> vectors are 512 and builds the file. However, when I run the .py file on my
> E312 it throws an error stating that the radio is providing data of size 8
> when the copy block expects to get data of size 512 (the vector size).
>
> [INFO] [UHD] linux; GNU C++ version 4.9.2; Boost_105700;
> UHD_3.14.1.HEAD-0-gbfb9c1c7
> [INFO] [E300] Loading FPGA image: /home/root/localinstall/e300.bit...
> [INFO] [E300] FPGA image loaded
> [INFO] [E300] Detecting internal GPS
> .... [INFO] [E300] GPSDO found
> [INFO] [E300] Initializing core control (global registers)...
>
> [INFO] [E300] Performing register loopback test...
> [INFO] [E300] Register loopback test passed
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000000)
> [WARNING] [RFNOC] Can't find a block controller for key FFT, using default
> block controller!
> [INFO] [0/FFT_0] Initializing block control (NOC ID: 0xFF70000000000000)
> [INFO] [0/Window_0] Initializing block control (NOC ID: 0xD053000000000000)
> [WARNING] [RFNOC] Can't find a block controller for key fosphor, using
> default block controller!
> [INFO] [0/fosphor_0] Initializing block control (NOC ID:
> 0x666F000000000000)
> [INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)
> [INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)
> Traceback (most recent call last):
>   File "rfnoc_fosphor_network_usrp.py", line 282, in <module>
>     main()
>   File "rfnoc_fosphor_network_usrp.py", line 271, in main
>     tb = top_block_cls(fft_size=options.fft_size,
> fpga_path=options.fpga_path, freq=options.freq, gain=options.gain,
> host_ip_addr=options.host_ip_addr, samp_rate=options.samp_rate,
> tdecay=options.tdecay, trise=options.trise)
>   File "rfnoc_fosphor_network_usrp.py", line 166, in __init__
>     self.connect((self.uhd_rfnoc_streamer_radio_0, 0),
> (self.blocks_copy_0, 0))
>   File
> "/home/root/localinstall/usr/lib/python2.7/site-packages/gnuradio/gr/hier_block2.py",
> line 47, in wrapped
>     func(self, src, src_port, dst, dst_port)
>   File
> "/home/root/localinstall/usr/lib/python2.7/site-packages/gnuradio/gr/hier_block2.py",
> line 110, in connect
>     self.primitive_connect(*args)
>   File
> "/home/root/localinstall/usr/lib/python2.7/site-packages/gnuradio/gr/runtime_swig.py",
> line 3482, in primitive_connect
>     return _runtime_swig.top_block_sptr_primitive_connect(self, *args)
> ValueError: itemsize mismatch: rfnoc_radio0:0 using 8, copy0:0 using 4096
>
> I have attached my modified examples for anyone who is interested. I have
> tried to modify the python and that just gets me into more trouble.
>
> Through my tracing of the files it appears that the RFNoC Radio block in
> the .py file never actually uses the vector size, and that the force vector
> length block is an additive to allow compliance when working in GNURadio,
> as it will not generate python with mismatched types and sizes. Trying to
> force the radio to take the 512 as an argument in the python throws a new
> error that the Radio is only allowed to have 5 arguments and I have
> supplied 6, and validated in the Ettus .py file that there is no arg for
> vector size.
>
> I was wondering if anyone found away around this or got the RFNoC Split
> block working?
>
> Regards,
> Jon Lockhart
>
>

--00000000000072ca7105964d453c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Greetings Jason,<div dir=3D"auto"><br></div><div dir=3D"a=
uto">I will give that a look. Seems like that is a change in the rfnoc bloc=
k verilog and not the Python, so I can handle that if I find it.=C2=A0</div=
><div dir=3D"auto"><br></div><div dir=3D"auto">I am currently in 3.14.1.0 b=
ecause that is the os version I am running. If I try 3.15 it errors out on =
the E312 bc the SD card image is missing necessary installed files. I have =
yet to venture into docker to try and build my own image.</div><div dir=3D"=
auto"><br></div><div dir=3D"auto">Do you know if this is corrected in the 3=
.14.1.1 release?=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">R=
egards,</div><div dir=3D"auto">Jon Lockhart=C2=A0</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 1, 2019,=
 2:11 PM Jason Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.com=
">jason@gardettoengineering.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Jonathon, If you look at the more recent commits for UHD, they added in a f=
ix to the split_stream error.=C2=A0 Basically you need to change a 1&#39;b1=
 to a 2&#39;b11 in the noc_shell section (I think that is the section, I ca=
n&#39;t recall off the top of my head).=C2=A0 Try that
 and rebuild.</div>
<div id=3D"m_-6351147177815975557Signature">
<div>
<div id=3D"m_-6351147177815975557appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-6351147177815975557divRplyFwdMsg" dir=3D"ltr"><font face=3D"C=
alibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From:</b>=
 USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com" targe=
t=3D"_blank" rel=3D"noreferrer">usrp-users-bounces@lists.ettus.com</a>&gt; =
on behalf of Jonathan Lockhart via USRP-users &lt;<a href=3D"mailto:usrp-us=
ers@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.=
ettus.com</a>&gt;<br>
<b>Sent:</b> Thursday, October 31, 2019 3:30 PM<br>
<b>To:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" =
rel=3D"noreferrer">USRP-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@li=
sts.ettus.com</a>&gt;; <a href=3D"mailto:support@ettus.com" target=3D"_blan=
k" rel=3D"noreferrer">support@ettus.com</a> &lt;<a href=3D"mailto:support@e=
ttus.com" target=3D"_blank" rel=3D"noreferrer">support@ettus.com</a>&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] RFNoC Radio Issue</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">Apologies, the files are attached. <br>
</div>
<br>
<div>
<div dir=3D"ltr">On Thu, Oct 31, 2019 at 3:30 PM Jonathan Lockhart &lt;<a h=
ref=3D"mailto:jlockhartrt@gmail.com" target=3D"_blank" rel=3D"noreferrer">j=
lockhartrt@gmail.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div>Greetings,</div>
<div><br>
</div>
<div>I was wondering if anyone else has had this issue with the RFNoC radio=
 block.</div>
<div><br>
</div>
<div>So I was using the copy block with the rfnoc_fosphor_network_usrp.grc =
file as I wanted to split off the signal before it went off to the RFNoC Wi=
ndow. So I put in a copy block (since the RFNoC Split block appears to be b=
roken) and passed the data off to
 a ZMQ Push and back to the window to continue to be processed by the FPGA.=
 GNURadio says this is all well and good since all vectors are 512 and buil=
ds the file. However, when I run the .py file on my E312 it throws an error=
 stating that the radio is providing
 data of size 8 when the copy block expects to get data of size 512 (the ve=
ctor size).</div>
<div><br>
</div>
<div>[INFO] [UHD] linux; GNU C++ version 4.9.2; Boost_105700; UHD_3.14.1.HE=
AD-0-gbfb9c1c7<br>
[INFO] [E300] Loading FPGA image: /home/root/localinstall/e300.bit...<br>
[INFO] [E300] FPGA image loaded<br>
[INFO] [E300] Detecting internal GPS <br>
.... [INFO] [E300] GPSDO found<br>
[INFO] [E300] Initializing core control (global registers)...<br>
<br>
[INFO] [E300] Performing register loopback test... <br>
[INFO] [E300] Register loopback test passed<br>
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000000)<=
br>
[WARNING] [RFNOC] Can&#39;t find a block controller for key FFT, using defa=
ult block controller!<br>
[INFO] [0/FFT_0] Initializing block control (NOC ID: 0xFF70000000000000)<br=
>
[INFO] [0/Window_0] Initializing block control (NOC ID: 0xD053000000000000)=
<br>
[WARNING] [RFNOC] Can&#39;t find a block controller for key fosphor, using =
default block controller!<br>
[INFO] [0/fosphor_0] Initializing block control (NOC ID: 0x666F000000000000=
)<br>
[INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)<b=
r>
[INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)<b=
r>
Traceback (most recent call last):<br>
=C2=A0 File &quot;rfnoc_fosphor_network_usrp.py&quot;, line 282, in &lt;mod=
ule&gt;<br>
=C2=A0 =C2=A0 main()<br>
=C2=A0 File &quot;rfnoc_fosphor_network_usrp.py&quot;, line 271, in main<br=
>
=C2=A0 =C2=A0 tb =3D top_block_cls(fft_size=3Doptions.fft_size, fpga_path=
=3Doptions.fpga_path, freq=3Doptions.freq, gain=3Doptions.gain, host_ip_add=
r=3Doptions.host_ip_addr, samp_rate=3Doptions.samp_rate, tdecay=3Doptions.t=
decay, trise=3Doptions.trise)<br>
=C2=A0 File &quot;rfnoc_fosphor_network_usrp.py&quot;, line 166, in __init_=
_<br>
=C2=A0 =C2=A0 self.connect((self.uhd_rfnoc_streamer_radio_0, 0), (self.bloc=
ks_copy_0, 0))<br>
=C2=A0 File &quot;/home/root/localinstall/usr/lib/python2.7/site-packages/g=
nuradio/gr/hier_block2.py&quot;, line 47, in wrapped<br>
=C2=A0 =C2=A0 func(self, src, src_port, dst, dst_port)<br>
=C2=A0 File &quot;/home/root/localinstall/usr/lib/python2.7/site-packages/g=
nuradio/gr/hier_block2.py&quot;, line 110, in connect<br>
=C2=A0 =C2=A0 self.primitive_connect(*args)<br>
=C2=A0 File &quot;/home/root/localinstall/usr/lib/python2.7/site-packages/g=
nuradio/gr/runtime_swig.py&quot;, line 3482, in primitive_connect<br>
=C2=A0 =C2=A0 return _runtime_swig.top_block_sptr_primitive_connect(self, *=
args)<br>
ValueError: itemsize mismatch: rfnoc_radio0:0 using 8, copy0:0 using 4096</=
div>
<div><br>
</div>
<div>I have attached my modified examples for anyone who is interested. I h=
ave tried to modify the python and that just gets me into more trouble.
<br>
</div>
<div><br>
</div>
<div>Through my tracing of the files it appears that the RFNoC Radio block =
in the .py file never actually uses the vector size, and that the force vec=
tor length block is an additive to allow compliance when working in GNURadi=
o, as it will not generate python
 with mismatched types and sizes. Trying to force the radio to take the 512=
 as an argument in the python throws a new error that the Radio is only all=
owed to have 5 arguments and I have supplied 6, and validated in the Ettus =
.py file that there is no arg for
 vector size. <br>
</div>
<div><br>
</div>
<div>I was wondering if anyone found away around this or got the RFNoC Spli=
t block working?</div>
<div><br>
</div>
<div>Regards,</div>
<div>Jon Lockhart<br>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</div>

</blockquote></div>

--00000000000072ca7105964d453c--


--===============3454600049319511891==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3454600049319511891==--

