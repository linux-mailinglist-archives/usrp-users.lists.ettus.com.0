Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCA32FECEC
	for <lists+usrp-users@lfdr.de>; Thu, 21 Jan 2021 15:33:03 +0100 (CET)
Received: from [::1] (port=48230 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2b1C-0001YI-4P; Thu, 21 Jan 2021 09:33:02 -0500
Received: from mail-ot1-f51.google.com ([209.85.210.51]:44892)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1l2b18-0001RN-Bg
 for usrp-users@lists.ettus.com; Thu, 21 Jan 2021 09:32:58 -0500
Received: by mail-ot1-f51.google.com with SMTP id e70so1723659ote.11
 for <usrp-users@lists.ettus.com>; Thu, 21 Jan 2021 06:32:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=utH7FLKqYlAIs8/Mn7DAvBGHX9WO9yv3z1Qa5aWIxv0=;
 b=afSCwS1DJlmQibxFSxjH7btP/EF2Y8py3YMac716gU3+f3TFQjkLS4St6xtOEXZKUS
 Kf6PdHw+Foj6WsvteMxcfi9/EyooDzXjEYOrV2GDBBnqxrPTrVq+IX8npC+LwnydxS/l
 WfaEVW1hGgmLGFq0zRjq2iVaAZwNke+ROYNph7ZmChFiwJpUF8PY0iBSqhGCjE3zvY3F
 595XJSwUWI1eJvh7JKh/uOKqWKLfbK0Its7tr2taTt5sApVI8ra9QvcVYrymEePxArmO
 durrNHgLSqLn8rfdZ1hTU/21adTKvWHuF095ZNTAYHVRdgzg68zoxjSAupHr1i4tSgUi
 EUgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=utH7FLKqYlAIs8/Mn7DAvBGHX9WO9yv3z1Qa5aWIxv0=;
 b=L4vYdJNUtXj6X2fYpVCX3a8U+owJnkkndUVni3XPkWcDzHvDxZQW2nDlAtGvUUl2FD
 EnpsFI5qdo9l4KPXKj4ov2ftzsn1zLDMawyG5SAG23MDeewFpcq7X9Walzb4n1/20vMi
 JXhk28GHFMCVwrm4Ok415zOrCt++V0G6KaF7T0wqPP7A2+qj7hk8SlI83WIEMFaqE8mF
 IMhaXmMnv5NIbrUdrXiitYkB8mKbajuGoWrB++4U0Q2n5hIHqaQgox0KGOreDTaZSQv3
 E60LPrk2ADE4HiePub3xVRa0IPvQOCmqaMTqD1rDY7zZKmXLw4B4o1L4/6F0UxiTw6Ti
 qJGg==
X-Gm-Message-State: AOAM531Qfjl6nbDHetx2ozNZr2kw2+DEv1vHYUYjvYEdm87Zrq/p5TV1
 jh4SZxf61g7xbzVwT2C0FfvichQOQkXP5gb6S0cu39QwdNs=
X-Google-Smtp-Source: ABdhPJxsz35DJQ1brmqHiRkEzEYnGLl/lPaRo5Vy12W1SRjZuRm4URUnVqlrkAyXxCvuWeUBb4GnogJXZPWfxDMjDdc=
X-Received: by 2002:a9d:7486:: with SMTP id t6mr6716450otk.58.1611239536072;
 Thu, 21 Jan 2021 06:32:16 -0800 (PST)
MIME-Version: 1.0
References: <20210119174249.2552vsmlnc35d6i4@barbe>
 <CAB__hTT9z0WHtD88DTrrn6CeCXd8Eg3TEdLAjuh_vt0s7sqncg@mail.gmail.com>
 <20210121140720.br62jzoem33ovwsr@barbe>
In-Reply-To: <20210121140720.br62jzoem33ovwsr@barbe>
Date: Thu, 21 Jan 2021 09:32:05 -0500
Message-ID: <CAB__hTT+gaOgFF2_ME+=bY9S21e_D-+XfCv7dH_qRmAZ-6h6oQ@mail.gmail.com>
To: =?UTF-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>, 
 usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] No streaming using OOT RFNoC Block in UHD4
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============3470759318549637222=="
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

--===============3470759318549637222==
Content-Type: multipart/alternative; boundary="000000000000324d7305b969f0fc"

--000000000000324d7305b969f0fc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I still don't know the answer to the problem, but one difference between
the program I sent you and the rfnoc_rx_to_file is the way in which the
streaming is started.  In my example, streaming is started directly by
sending samples via the tx_streamer.  In the rfnoc_rx_to_file program,
streaming is started by the function rx_stream->issue_stream_cmd().  Note
that this is a command to the streamer which then must be forwarded to the
gain controller and then the ddc controller and then the radio controller
which will then turn on the radio.

So, one question I have is: does the command make it to the radio?  I think
that you can tell by looking at the LED - does it turn on?

   - If so, then I am on the wrong path.
   - If not, then
      - Maybe there is some setting in the gain block controller that is
      not forwarding the command.
      - Or, more likely, maybe the gain block controller is not being used
      at all because of the block finding issue "block#0" vs "gain#0".  In =
this
      case, perhaps building the gain block controller in-tree would help

Rob

On Thu, Jan 21, 2021 at 9:08 AM C=C3=A9dric Hannotier via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Rob,
>
> Thanks for your help.
>
> On 20/01/21 16:46, Rob Kossler wrote:
> > I don't see anything wrong.  Given that you said the FFT block works bu=
t
> > your block doesn't, could it be something related to a c++ block
> > controller?
>
> It is not just *my* block. the gain block from
> "uhd/host/examples/rfnoc-example" does not work either.
> Same for the initial block generated by rfnocmodtool (just a passthrough)=
.
>
> For simplicity, let's just focus on the "example" gain block
> (since that one is provided by Ettus/uhd).
>
> The procedure I followed:
>  1. UHD_DIR=3D/path/to/uhd # git branch UHD-4.0
>  2. cp -r $UHD_DIR/host/examples/rfnoc-example /tmp
>  3. cd /tmp/rfnoc-example
>  4. sed -i '/^set(RFNOC_PKG_DATA_DIR/ s/uhd/uhd4.0.0/' CMakeLists.txt #
> rfnoc block are in /usr/share/uhd4.0.0/rfnoc/...
>  5. cmake -S . -B build -DUHD_FPGA_DIR=3D$UHD_DIR/fpga/
> -DCMAKE_INSTALL_PREFIX=3D/usr # installation is on /usr not /usr/local
>  6. cd build
>  7. make
>
> """
> [ 25%] Building CXX object
> lib/CMakeFiles/rfnoc-example.dir/gain_block_control.cpp.o
> [ 50%] Linking CXX shared library librfnoc-example.so
> [ 50%] Built target rfnoc-example
> Scanning dependencies of target init_gain_block
> [ 75%] Building CXX object
> apps/CMakeFiles/init_gain_block.dir/init_gain_block.cpp.o
> [100%] Linking CXX executable init_gain_block
> [100%] Built target init_gain_block
> """
>
>  8. sudo make install
>
> """
> [ 50%] Built target rfnoc-example
> [100%] Built target init_gain_block
> Install the project...
> -- Install configuration: ""
> -- Installing: /usr/share/uhd4.0.0/rfnoc/blocks/gain.yml
> -- Installing: /usr/share/uhd4.0.0/rfnoc/example/fpga/Makefile.srcs
> -- Installing:
> /usr/share/uhd4.0.0/rfnoc/example/fpga/rfnoc_block_gain/Makefile.srcs
> -- Installing:
> /usr/share/uhd4.0.0/rfnoc/example/fpga/rfnoc_block_gain/rfnoc_block_gain.=
v
> -- Installing:
> /usr/share/uhd4.0.0/rfnoc/example/fpga/rfnoc_block_gain/noc_shell_gain.v
> -- Installing: /usr/include/rfnoc/gain/gain_block_control.hpp
> -- Installing: /usr/lib/librfnoc-example.so
> -- Set runtime path of "/usr/lib/librfnoc-example.so" to ""
> """
>
>  9. make x310_rfnoc_image_core
>  10. cd $UHD_DIR/fpga/usrp3/top/x300/
>  11. source setupenv.sh
>  12. viv_jtag_program build/usrp_x310_fpga_HG.bit
>
> Then, using the code provided from your mail:
>
> """
> $ g++ -g -o test rfnoc_block_test.cpp  -lboost_program_options -luhd
> $ ./test --block-id '0/Block#0' --tx-stream-args "spp=3D256"
> --rx-stream-args "spp=3D256"
>
> Creating the USRP device with args:
> [INFO] [UHD] linux; GNU C++ version 10.2.1 20201224; Boost_107400;
> UHD_4.0.0.0-4
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 1472 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0xb16,
> 0xffff
> Device creation complete
>
> Block to test: 0/Block#0
>
> Creating rx streamer with args: spp=3D256
> Creating tx streamer with args: spp=3D256
>
> tx_streamer->send(), time: 5.6789, tick count: 5678900, nsamps: 1024, SOB=
:
> 1, EOB: 1, SPP: 256
>
> rx_streamer->recv(), time: 6, tick count: 6000000, nsamps: 256, SOB: 0,
> EOB: 0
> rx_streamer->recv(), time: 262, tick count: 262000000, nsamps: 256, SOB:
> 0, EOB: 0
> rx_streamer->recv(), time: 518, tick count: 518000000, nsamps: 256, SOB:
> 0, EOB: 0
> rx_streamer->recv(), time: 774, tick count: 774000000, nsamps: 256, SOB:
> 0, EOB: 1
> rx_streamer->recv(), time: -1, tick count: 0, nsamps: 0, SOB: 0, EOB: 0
> """
>
> So, it worked.
>
> However,
> it still does not solve the patched version of rfnoc_rx_to_file
> that I provided in my original mail (it is attached to this email).
> It still exits with timeout (not receiving any packet).
>
> """
> $ g++ -g -o test rfnoc_rx_to_file.cpp  -lboost_program_options -luhd
> $ ./test  --block-id '0/Block#0' --rate 20e6 --progress
>
> Creating the RFNoC graph with args: ...
> [INFO] [UHD] linux; GNU C++ version 10.2.1 20201224; Boost_107400;
> UHD_4.0.0.0-4
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 1472 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0xb16,
> 0xffff
> Using radio 0, channel 0
> Looking for source block 0/Radio#0, port 0
> Setting RX Rate: 20.000000 Msps...
> DDC block found
> Setting decimation value to 10
> Actual decimation value is 10
> Actual RX Rate: 20.000000 Msps...
>
> Setting RX Freq: 0.000000 MHz...
> Actual RX Freq: 10.000000 MHz...
>
> Setting samples per packet to: 64
> Actual samples per packet =3D 64
> Using streamer args:
> Press Ctrl + C to stop streaming...
> Issuing stream cmd
> Timeout while streaming
> Issuing stop stream cmd
>
> Done!
> """
>
> Sadly, I am still stuck :(
> Any further help appreciated!
>
> --
>
> C=C3=A9dric Hannotier
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000324d7305b969f0fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">I still don&#39;t know the answer to the =
problem, but one difference between the program I sent you and the rfnoc_rx=
_to_file is the way in which the streaming is started.=C2=A0 In my example,=
 streaming is started directly by sending samples via the tx_streamer.=C2=
=A0 In the rfnoc_rx_to_file program, streaming is started by the function r=
x_stream-&gt;issue_stream_cmd().=C2=A0 Note that this is a command to the s=
treamer which then must be forwarded to the gain controller and then the dd=
c controller and then the radio controller which will then turn on the radi=
o.=C2=A0=C2=A0</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">So, one que=
stion I have is: does the command make it to the radio?=C2=A0 I think that =
you can tell by looking at the LED - does it turn on?=C2=A0=C2=A0</div><div=
 dir=3D"ltr"><ul><li>If so, then I am on the wrong path.=C2=A0=C2=A0</li><l=
i>If not, then=C2=A0</li><ul><li>Maybe there is some setting in the gain bl=
ock controller=C2=A0that is not forwarding the command.=C2=A0=C2=A0</li><li=
>Or, more likely, maybe the gain block controller is not being used at all =
because of the block finding issue &quot;block#0&quot; vs &quot;gain#0&quot=
;.=C2=A0 In this case, perhaps=C2=A0building the gain block controller in-t=
ree would help</li></ul></ul><div>Rob</div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 21, 2021 at 9:08 AM =
C=C3=A9dric Hannotier via USRP-users &lt;<a href=3D"mailto:usrp-users@lists=
.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">Hi Rob,<br>
<br>
Thanks for your help.<br>
<br>
On 20/01/21 16:46, Rob Kossler wrote:<br>
&gt; I don&#39;t see anything wrong.=C2=A0 Given that you said the FFT bloc=
k works but<br>
&gt; your block doesn&#39;t, could it be something related to a c++ block<b=
r>
&gt; controller?<br>
<br>
It is not just *my* block. the gain block from<br>
&quot;uhd/host/examples/rfnoc-example&quot; does not work either.<br>
Same for the initial block generated by rfnocmodtool (just a passthrough).<=
br>
<br>
For simplicity, let&#39;s just focus on the &quot;example&quot; gain block<=
br>
(since that one is provided by Ettus/uhd).<br>
<br>
The procedure I followed:<br>
=C2=A01. UHD_DIR=3D/path/to/uhd # git branch UHD-4.0<br>
=C2=A02. cp -r $UHD_DIR/host/examples/rfnoc-example /tmp<br>
=C2=A03. cd /tmp/rfnoc-example<br>
=C2=A04. sed -i &#39;/^set(RFNOC_PKG_DATA_DIR/ s/uhd/uhd4.0.0/&#39; CMakeLi=
sts.txt # rfnoc block are in /usr/share/uhd4.0.0/rfnoc/...<br>
=C2=A05. cmake -S . -B build -DUHD_FPGA_DIR=3D$UHD_DIR/fpga/ -DCMAKE_INSTAL=
L_PREFIX=3D/usr # installation is on /usr not /usr/local<br>
=C2=A06. cd build<br>
=C2=A07. make<br>
<br>
&quot;&quot;&quot;<br>
[ 25%] Building CXX object lib/CMakeFiles/rfnoc-example.dir/gain_block_cont=
rol.cpp.o<br>
[ 50%] Linking CXX shared library librfnoc-example.so<br>
[ 50%] Built target rfnoc-example<br>
Scanning dependencies of target init_gain_block<br>
[ 75%] Building CXX object apps/CMakeFiles/init_gain_block.dir/init_gain_bl=
ock.cpp.o<br>
[100%] Linking CXX executable init_gain_block<br>
[100%] Built target init_gain_block<br>
&quot;&quot;&quot;<br>
<br>
=C2=A08. sudo make install<br>
<br>
&quot;&quot;&quot;<br>
[ 50%] Built target rfnoc-example<br>
[100%] Built target init_gain_block<br>
Install the project...<br>
-- Install configuration: &quot;&quot;<br>
-- Installing: /usr/share/uhd4.0.0/rfnoc/blocks/gain.yml<br>
-- Installing: /usr/share/uhd4.0.0/rfnoc/example/fpga/Makefile.srcs<br>
-- Installing: /usr/share/uhd4.0.0/rfnoc/example/fpga/rfnoc_block_gain/Make=
file.srcs<br>
-- Installing: /usr/share/uhd4.0.0/rfnoc/example/fpga/rfnoc_block_gain/rfno=
c_block_gain.v<br>
-- Installing: /usr/share/uhd4.0.0/rfnoc/example/fpga/rfnoc_block_gain/noc_=
shell_gain.v<br>
-- Installing: /usr/include/rfnoc/gain/gain_block_control.hpp<br>
-- Installing: /usr/lib/librfnoc-example.so<br>
-- Set runtime path of &quot;/usr/lib/librfnoc-example.so&quot; to &quot;&q=
uot;<br>
&quot;&quot;&quot;<br>
<br>
=C2=A09. make x310_rfnoc_image_core<br>
=C2=A010. cd $UHD_DIR/fpga/usrp3/top/x300/<br>
=C2=A011. source setupenv.sh<br>
=C2=A012. viv_jtag_program build/usrp_x310_fpga_HG.bit<br>
<br>
Then, using the code provided from your mail:<br>
<br>
&quot;&quot;&quot;<br>
$ g++ -g -o test rfnoc_block_test.cpp=C2=A0 -lboost_program_options -luhd<b=
r>
$ ./test --block-id &#39;0/Block#0&#39; --tx-stream-args &quot;spp=3D256&qu=
ot; --rx-stream-args &quot;spp=3D256&quot;<br>
<br>
Creating the USRP device with args:<br>
[INFO] [UHD] linux; GNU C++ version 10.2.1 20201224; Boost_107400; UHD_4.0.=
0.0-4<br>
[INFO] [X300] X300 initialization sequence...<br>
[INFO] [X300] Maximum frame size: 1472 bytes.<br>
[INFO] [X300] Radio 1x clock: 200 MHz<br>
[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0xb16, 0x=
ffff<br>
Device creation complete<br>
<br>
Block to test: 0/Block#0<br>
<br>
Creating rx streamer with args: spp=3D256<br>
Creating tx streamer with args: spp=3D256<br>
<br>
tx_streamer-&gt;send(), time: 5.6789, tick count: 5678900, nsamps: 1024, SO=
B: 1, EOB: 1, SPP: 256<br>
<br>
rx_streamer-&gt;recv(), time: 6, tick count: 6000000, nsamps: 256, SOB: 0, =
EOB: 0<br>
rx_streamer-&gt;recv(), time: 262, tick count: 262000000, nsamps: 256, SOB:=
 0, EOB: 0<br>
rx_streamer-&gt;recv(), time: 518, tick count: 518000000, nsamps: 256, SOB:=
 0, EOB: 0<br>
rx_streamer-&gt;recv(), time: 774, tick count: 774000000, nsamps: 256, SOB:=
 0, EOB: 1<br>
rx_streamer-&gt;recv(), time: -1, tick count: 0, nsamps: 0, SOB: 0, EOB: 0<=
br>
&quot;&quot;&quot;<br>
<br>
So, it worked.<br>
<br>
However,<br>
it still does not solve the patched version of rfnoc_rx_to_file<br>
that I provided in my original mail (it is attached to this email).<br>
It still exits with timeout (not receiving any packet).<br>
<br>
&quot;&quot;&quot;<br>
$ g++ -g -o test rfnoc_rx_to_file.cpp=C2=A0 -lboost_program_options -luhd<b=
r>
$ ./test=C2=A0 --block-id &#39;0/Block#0&#39; --rate 20e6 --progress<br>
<br>
Creating the RFNoC graph with args: ...<br>
[INFO] [UHD] linux; GNU C++ version 10.2.1 20201224; Boost_107400; UHD_4.0.=
0.0-4<br>
[INFO] [X300] X300 initialization sequence...<br>
[INFO] [X300] Maximum frame size: 1472 bytes.<br>
[INFO] [X300] Radio 1x clock: 200 MHz<br>
[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0xb16, 0x=
ffff<br>
Using radio 0, channel 0<br>
Looking for source block 0/Radio#0, port 0<br>
Setting RX Rate: 20.000000 Msps...<br>
DDC block found<br>
Setting decimation value to 10<br>
Actual decimation value is 10<br>
Actual RX Rate: 20.000000 Msps...<br>
<br>
Setting RX Freq: 0.000000 MHz...<br>
Actual RX Freq: 10.000000 MHz...<br>
<br>
Setting samples per packet to: 64<br>
Actual samples per packet =3D 64<br>
Using streamer args:<br>
Press Ctrl + C to stop streaming...<br>
Issuing stream cmd<br>
Timeout while streaming<br>
Issuing stop stream cmd<br>
<br>
Done!<br>
&quot;&quot;&quot;<br>
<br>
Sadly, I am still stuck :(<br>
Any further help appreciated!<br>
<br>
-- <br>
<br>
C=C3=A9dric Hannotier<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000324d7305b969f0fc--


--===============3470759318549637222==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3470759318549637222==--

