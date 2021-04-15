Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 68046361448
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 23:41:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A831D3846EB
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 17:41:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="CFe1tQ/d";
	dkim-atps=neutral
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	by mm2.emwd.com (Postfix) with ESMTPS id BD531384682
	for <usrp-users@lists.ettus.com>; Thu, 15 Apr 2021 17:41:01 -0400 (EDT)
Received: by mail-oi1-f180.google.com with SMTP id m13so25751981oiw.13
        for <usrp-users@lists.ettus.com>; Thu, 15 Apr 2021 14:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bdYoxbHI06uUIWCDxSBmd4VT63s7HNPLF8JgwQcH5jI=;
        b=CFe1tQ/duKWI3cytxv0iDmHKzcFcUdThiRAWG83cB4VzSToc6Alzz0thJNsIxQAAxF
         TJEnHZaBDC36y3aBECGBAQAiGB71a+V+RTYqL7/cD+t62nZ08FE1yBC+siDAH82Lq9qE
         nkcKkiH/ri+01yj9KQJfdtI2aK8y3jQ8Krn5H/Ozz89yvUpeD9i6PFhRmp0LRlCb/yjY
         o1hXW2C2g4cEzpSZgmLAN2t3MN9iNOhE4GurUtcFcse8IVOPVdcJhNLUI6jEIcBhusgG
         ETDx/DeB0RnjMOUAcEtzFQab2ZKTFpieQuy7CTQJhBK+XVjwWpSeknV8iKVuzQWctj1O
         ihJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bdYoxbHI06uUIWCDxSBmd4VT63s7HNPLF8JgwQcH5jI=;
        b=pa+gJfZplIyRVqGhbrRhy9RSqLw23gPC5zHPctH1Bl1Z+faQB5GyeRAtb63/UgmkLS
         oBRZ9LaVCKTFyKrv5LjvYSTGGvZFKzraElMcoXj0FdvlWdomSZDrSSOTeGjUOxerw2e4
         KjI83kkCMdfgAF+p73G/K/sfslfeJdAFVsN54UTZ4L82mg7mmFIF9NqXHQSh634j5kqk
         VN5hlZiJRyDx/srReWfuX+dIdjpFeXK2yhZv9hdEVEn+0wgDxFEz8BoLRefPFDt/FhS+
         hpw7Zp4GbY6w5yb/587IugW56D4MUZ4o1IGgBwy74UMf83jToheTRshPipTV5zHxWZje
         wimQ==
X-Gm-Message-State: AOAM530OxyCUiJY3EMiblIWQ0UMLC7asOe/cxGnvSKgVSbMV+HOQn47R
	sGgiO6eRa+oM3+1vTmyJZMSbKwlK9X3gFn5MPkm+Pg==
X-Google-Smtp-Source: ABdhPJy/AJw/vaieSeoSg1Tq4gv0OESKU1h892dsSJAcnVvmcJrvIUr1XJotvWMZdn5A8Jb611TuHhCtUeDxCb0fJec=
X-Received: by 2002:aca:bb09:: with SMTP id l9mr4106472oif.33.1618522860658;
 Thu, 15 Apr 2021 14:41:00 -0700 (PDT)
MIME-Version: 1.0
References: <b4cb345657e64c14b5fc1bfa84d34922@gtri.gatech.edu>
 <804ea930-44e5-aad0-cf5c-77d13b0afbf7@itsystems.it> <52db1ef0491e4088ae2ce829102a50ec@gtri.gatech.edu>
In-Reply-To: <52db1ef0491e4088ae2ce829102a50ec@gtri.gatech.edu>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 15 Apr 2021 17:40:49 -0400
Message-ID: <CAB__hTS7D6qw5EnxFPPdUnE0B95L6GPUExXyPpsdAsxPQw7yaA@mail.gmail.com>
To: "Rich, Michael" <Michael.Rich@gtri.gatech.edu>
Message-ID-Hash: LA5YNWT6JTRDSOUHYRWW4HGMLLKHWBNY
X-Message-ID-Hash: LA5YNWT6JTRDSOUHYRWW4HGMLLKHWBNY
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: AXI Stream Issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LA5YNWT6JTRDSOUHYRWW4HGMLLKHWBNY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6397111491005232211=="

--===============6397111491005232211==
Content-Type: multipart/alternative; boundary="0000000000002bed2f05c009b879"

--0000000000002bed2f05c009b879
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Michael,
I thought about your issue when you posted it originally and again when you
reposted, but I don't really have a good feel for what's going on. From
your last email, you mentioned the "D" message which means that UHD
detected that consecutive receive packets do not have consecutive sequence
numbers.  And, the timeout, of course, means that no packets are arriving.

For the "D" message, this can sometimes occur for very fast data rates
where the host PC gets overwhelmed such that packets get dropped. In this
case, nothing is wrong on the FPGA, but the PC might be able to be
optimized to avoid this.  Otherwise, perhaps it is happening on the FPGA.

Are you able to test your block in isolation with a graph such as
tx_streamer =3D> custom_block =3D> rx_streamer?  I don't use gnuradio so wh=
en I
test this way it is with a c++ custom application.  And, I seem to recall
that in gnuradio for UHD 3.15, there is some restriction that you have to
have at least 2 rfnoc blocks (such as a FIFO). I don't think this
restriction applies for UHD 4.0.

Rob

On Thu, Apr 15, 2021 at 2:00 PM Rich, Michael via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Has anyone had any ideas on how to address this issue?
>
>
>
> I=E2=80=99m not sure if my issue is the same as Paolo is seeing or not, b=
ut after
> debugging some more, I did have an additional question I was hoping someo=
ne
> could help me with. As I mentioned, the data stream I=E2=80=99m sending t=
o the
> AXI_Wrapper seems to work for a while, but at some point I start getting
> the following error in GNU Radio:
>
>
>
> overrun on chan 0
>
> D
>
>
>
> That persists for a while, then I get the error:
>
>
>
> timeout on chan 0
>
>
>
> Once I get that timeout, data_tready from AXI_Wrapper is stuck low, and I
> have to power-cycle or reprogram the FGPA to recover.
>
>
>
> Does anyone know what exactly would cause these error messages, and what
> that means within the context of the FGPA datapath?
>
>
>
> Any assistance or insights would be greatly appreciated.
>
>
>
> Thank you,
>
>
>
> *Michael H. Rich*
>
> *Electronic Systems Laboratory*
>
> *Georgia Tech Research Institute=C2=AE*
>
> Phone: (404) 407-8358
>
> E-mail: michael.rich@gtri.gatech.edu
>
>
>
> *From:* Paolo Palana <p.palana@itsystems.it>
> *Sent:* Tuesday, April 13, 2021 3:06 AM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Re: AXI Stream Issue
>
>
>
> Cheers to all the mailing list.
>
> I have similar problem too (the device is an X310 with TwinRx, UHD-3.15 o=
n
> ubuntu 20.04). My NoC Block too has 2 input and 2 output at a different
> data rate. The start streaming goes smootly and it seems to work for a
> while, but when I stop the streaming (during my tests I streamed for a ve=
ry
> short time, say 10 secs) I had the following error from UHD.
>
>   [ERROR] [UHD] Exception caught in safe-call. in
> ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with uhd::endianness_t
> _endianness =3D uhd::ENDIANNESS_BIG] at ~/host/lib/rfnoc/ctrl_iface.cpp:5=
0
> this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block ctrl
> (CE_03_Port_61) no response packet - AssertionError: bool(buff) in uint64=
_t
> ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) [with
> uhd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG; uint64_t =3D long
> unsigned int] at ~/host/lib/rfnoc/ctrl_iface.cpp:151
>
> It seems too me that the internal FPGA bus for some reason is stuck. In
> fact when I see the signals with ILA after the stop streaming I can see
> that the i_tready signal for the second input in my Noc Block is low, whi=
le
> the the i_tvalid is high.
>
> In my implementation I'm not using the axi_wrapper, but directly the
> chdr_deframer_2clk and chdr_framer_2clk.
>
> I'm pretty shure that the logic of my NoC Block is (almost) correct
> because I have the same one running with UHD-3.10.3 without any problem.
>
> Up to now I'm unable to pinpoint the problem, What can be the problem? An=
y
> suggestion
>
> Thank you for your attention
>
> Paolo
>
>
>
> *From:* Rich, Michael via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Monday, April 12, 2021 2:54 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] AXI Stream Issue
>
>
>
> I am having issues getting data out of a custom block NoC Block (on an
> X310 using UHD3.15) and I=E2=80=99m not quite sure what would be causing =
what I=E2=80=99m
> seeing. When everything starts up, it seems to work just fine for a bit,
> but then output stops. Checking the data bus using an ILA, it appears as
> though data_tready from the AXI_Wrapper goes low at some point and just
> stays there.
>
>
>
> My output is at a different rate than the input, so I=E2=80=99ve set SIMP=
LE_MODE=3D0
> for AXI_WRAPPER. I=E2=80=99m fairly sure I=E2=80=99m driving the AMBA bus=
 properly. I=E2=80=99m
> setting s_axis_data_tuser as follows:
>
> Bit 127-126 =3D 00 (data)
>
> Bit 125 =3D 0 (timestamp not used)
>
> Bit 124 =3D 0 or 1 (depending upon if end-of-burst or not)
>
> Bit 123-112 =3D sequence number (monotonically increasing for each packet
> starting at 0)
>
> Bit 111-96 =3D packet length (total number of data bytes + 8 header bytes=
)
>
> Bit 95-80 =3D src_sid (from noc_shell)
>
> Bit 79-64 =3D next_dst_sid (from noc_shell)
>
> Bit 63-0 =3D 0
>
>
>
> What might cause data_tready to remain low? Is there anything else I
> should be looking at that might explain this behavior?
>
>
> Thank you,
>
>
>
> *Michael H. Rich*
>
> *Electronic Systems Laboratory*
>
> *Georgia Tech Research Institute=C2=AE*
>
> Phone: (404) 407-8358
>
> E-mail: michael.rich@gtri.gatech.edu
>
>
>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002bed2f05c009b879
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Michael,<div>I thought about your issu=
e when you posted it originally and again when you reposted, but I don&#39;=
t really have a good feel for what&#39;s going=C2=A0on. From your last emai=
l, you mentioned the &quot;D&quot; message which means that UHD detected th=
at consecutive receive packets do not have consecutive sequence numbers.=C2=
=A0 And, the timeout, of course, means that no packets are arriving.=C2=A0=
=C2=A0</div><div><br></div><div>For the &quot;D&quot; message, this can som=
etimes occur for very fast data rates where the host PC gets overwhelmed su=
ch that packets get dropped. In this case, nothing is wrong on the FPGA, bu=
t the PC might be able to be optimized to avoid this.=C2=A0 Otherwise, perh=
aps it is happening on the FPGA.</div><div><br></div><div>Are you able to t=
est your block in isolation with a graph such as tx_streamer =3D&gt; custom=
_block =3D&gt; rx_streamer?=C2=A0 I don&#39;t use gnuradio so when I test t=
his way it is with a c++ custom application.=C2=A0 And, I seem to recall th=
at in gnuradio for UHD 3.15, there is some restriction that you have to hav=
e at least 2 rfnoc blocks (such as a FIFO). I don&#39;t think this restrict=
ion applies for UHD 4.0.</div><div><br></div><div>Rob</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 15, =
2021 at 2:00 PM Rich, Michael via USRP-users &lt;<a href=3D"mailto:usrp-use=
rs@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div lang=3D"EN-US"><div clas=
s=3D"gmail-m_-5191135289529969067WordSection1"><p class=3D"MsoNormal"><span=
 style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125=
)">Has anyone had any ideas on how to address this issue?<u></u><u></u></sp=
an></p><p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Cal=
ibri,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p><p cla=
ss=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sans-ser=
if;color:rgb(31,73,125)">I=E2=80=99m not sure if my issue is the same as Pa=
olo is seeing or not, but after debugging some more, I did have an addition=
al question I was hoping someone could help me with. As I mentioned, the da=
ta stream I=E2=80=99m sending to the AXI_Wrapper seems to work for a while,=
 but at some point I start getting the following error in GNU Radio:<u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:11pt;font=
-family:Calibri,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span=
></p><p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font=
-size:11pt;font-family:&quot;Courier New&quot;;color:rgb(31,73,125)">overru=
n on chan 0<u></u><u></u></span></p><p class=3D"MsoNormal" style=3D"margin-=
left:0.5in"><span style=3D"font-size:11pt;font-family:&quot;Courier New&quo=
t;;color:rgb(31,73,125)">D<u></u><u></u></span></p><p class=3D"MsoNormal"><=
span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73=
,125)"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span style=3D=
"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)">That p=
ersists for a while, then I get the error:<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sans-serif=
;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal=
" style=3D"margin-left:0.5in"><span style=3D"font-size:11pt;font-family:&qu=
ot;Courier New&quot;;color:rgb(31,73,125)">timeout on chan 0<u></u><u></u><=
/span></p><p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:=
Calibri,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p><p =
class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sans-=
serif;color:rgb(31,73,125)">Once I get that timeout, data_tready from AXI_W=
rapper is stuck low, and I have to power-cycle or reprogram the FGPA to rec=
over. <u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-s=
ize:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0=
<u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:11pt;font=
-family:Calibri,sans-serif;color:rgb(31,73,125)">Does anyone know what exac=
tly would cause these error messages, and what that means within the contex=
t of the FGPA datapath?<u></u><u></u></span></p><p class=3D"MsoNormal"><spa=
n style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span style=3D"fo=
nt-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)">Any assis=
tance or insights would be greatly appreciated.<u></u><u></u></span></p><p =
class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sans-=
serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoN=
ormal"><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:r=
gb(31,73,125)">Thank you,<u></u><u></u></span></p><p class=3D"MsoNormal"><s=
pan style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,=
125)"><u></u>=C2=A0<u></u></span></p><div><p class=3D"MsoNormal"><b><span s=
tyle=3D"font-family:Calibri,sans-serif;color:black">Michael H. Rich</span><=
/b><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(3=
1,73,125)"><u></u><u></u></span></p><p class=3D"MsoNormal"><i><span style=
=3D"font-size:10pt;font-family:Calibri,sans-serif;color:black">Electronic S=
ystems Laboratory</span></i><span style=3D"font-size:11pt;font-family:Calib=
ri,sans-serif;color:rgb(31,73,125)"><u></u><u></u></span></p><p class=3D"Ms=
oNormal"><b><i><span style=3D"font-size:10pt;font-family:Calibri,sans-serif=
;color:black">Georgia Tech Research Institute=C2=AE</span></i></b><span sty=
le=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)"><=
u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:10p=
t;font-family:Calibri,sans-serif;color:black">Phone: (404) 407-8358</span><=
span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73=
,125)"><u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-=
size:10pt;font-family:Calibri,sans-serif;color:black">E-mail:</span><span s=
tyle=3D"font-size:10pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)"=
> <a href=3D"mailto:michael.rich@gtri.gatech.edu" target=3D"_blank"><span s=
tyle=3D"color:blue">michael.rich@gtri.gatech.edu</span></a></span><span sty=
le=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)"><=
u></u><u></u></span></p></div><p class=3D"MsoNormal"><span style=3D"font-si=
ze:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<=
u></u></span></p><div><div style=3D"border-right:none;border-bottom:none;bo=
rder-left:none;border-top:1pt solid rgb(225,225,225);padding:3pt 0in 0in"><=
div style=3D"border-right:none;border-bottom:none;border-left:none;border-t=
op:1pt solid windowtext;padding:1pt 0in 0in"><p class=3D"MsoNormal" style=
=3D"border:none;padding:0in"><b><span style=3D"font-size:11pt;font-family:C=
alibri,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-famil=
y:Calibri,sans-serif"> Paolo Palana &lt;<a href=3D"mailto:p.palana@itsystem=
s.it" target=3D"_blank">p.palana@itsystems.it</a>&gt; <br><b>Sent:</b> Tues=
day, April 13, 2021 3:06 AM<br><b>To:</b> <a href=3D"mailto:usrp-users@list=
s.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br><b>Subject=
:</b> [USRP-users] Re: AXI Stream Issue<u></u><u></u></span></p></div></div=
></div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p>Cheers to all the =
mailing list.<u></u><u></u></p><p>I have similar problem too (the device is=
 an X310 with TwinRx, UHD-3.15 on ubuntu 20.04). My NoC Block too has 2 inp=
ut and 2 output at a different data rate. The start streaming goes smootly =
and it seems to work for a while, but when I stop the streaming (during my =
tests I streamed for a very short time, say 10 secs) I had the following er=
ror from UHD.<u></u><u></u></p><p>=C2=A0 <span style=3D"font-size:10pt">[ER=
ROR] [UHD] Exception caught in safe-call. in ctrl_iface_impl&lt;_endianness=
&gt;::~ctrl_iface_impl() [with uhd::endianness_t _endianness =3D uhd::ENDIA=
NNESS_BIG] at ~/host/lib/rfnoc/ctrl_iface.cpp:50 this-&gt;send_cmd_pkt(0, 0=
, true); -&gt; EnvironmentError: IOError: Block ctrl (CE_03_Port_61) no res=
ponse packet - AssertionError: bool(buff) in uint64_t ctrl_iface_impl&lt;_e=
ndianness&gt;::wait_for_ack(bool, double) [with uhd::endianness_t _endianne=
ss =3D uhd::ENDIANNESS_BIG; uint64_t =3D long unsigned int] at ~/host/lib/r=
fnoc/ctrl_iface.cpp:151</span><u></u><u></u></p><p>It seems too me that the=
 internal FPGA bus for some reason is stuck. In fact when I see the signals=
 with ILA after the stop streaming I can see that the i_tready signal for t=
he second input in my Noc Block is low, while the the i_tvalid is high. <u>=
</u><u></u></p><p>In my implementation I&#39;m not using the axi_wrapper, b=
ut directly the chdr_deframer_2clk and chdr_framer_2clk.<u></u><u></u></p><=
p>I&#39;m pretty shure that the logic of my NoC Block is (almost) correct b=
ecause I have the same one running with UHD-3.10.3 without any problem.<u><=
/u><u></u></p><p>Up to now I&#39;m unable to pinpoint the problem<span styl=
e=3D"font-size:10pt">, </span>What can be the problem?<span style=3D"font-s=
ize:10pt"> </span>Any suggestion<u></u><u></u></p><p>Thank you for your att=
ention<u></u><u></u></p><p>Paolo<span style=3D"font-size:11pt;font-family:C=
alibri,sans-serif"><u></u><u></u></span></p><p class=3D"MsoNormal"><span st=
yle=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)">=
<u></u>=C2=A0<u></u></span></p><div style=3D"border-right:none;border-botto=
m:none;border-left:none;border-top:1pt solid windowtext;padding:1pt 0in 0in=
"><p class=3D"MsoNormal" style=3D"border:none;padding:0in"><b><span style=
=3D"font-size:11pt;font-family:Calibri,sans-serif">From:</span></b><span st=
yle=3D"font-size:11pt;font-family:Calibri,sans-serif"> Rich, Michael via US=
RP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a>&gt; <br><b>Sent:</b> Monday, April 12, 202=
1 2:54 PM<br><b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a><br><b>Subject:</b> [USRP-users]=
 AXI Stream Issue<u></u><u></u></span></p></div><p class=3D"MsoNormal"><spa=
n style=3D"font-size:11pt;font-family:Calibri,sans-serif"><u></u>=C2=A0<u><=
/u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-fam=
ily:Calibri,sans-serif">I am having issues getting data out of a custom blo=
ck NoC Block (on an X310 using UHD3.15) and I=E2=80=99m not quite sure what=
 would be causing what I=E2=80=99m seeing. When everything starts up, it se=
ems to work just fine for a bit, but then output stops. Checking the data b=
us using an ILA, it appears as though data_tready from the AXI_Wrapper goes=
 low at some point and just stays there. <u></u><u></u></span></p><p class=
=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sans-serif=
"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span style=3D"font=
-size:11pt;font-family:Calibri,sans-serif">My output is at a different rate=
 than the input, so I=E2=80=99ve set SIMPLE_MODE=3D0 for AXI_WRAPPER. I=E2=
=80=99m fairly sure I=E2=80=99m driving the AMBA bus properly. I=E2=80=99m =
setting s_axis_data_tuser as follows:<u></u><u></u></span></p><p class=3D"M=
soNormal"><span style=3D"font-size:11pt;font-family:Calibri,sans-serif">Bit=
 127-126 =3D 00 (data)<u></u><u></u></span></p><p class=3D"MsoNormal"><span=
 style=3D"font-size:11pt;font-family:Calibri,sans-serif">Bit 125 =3D 0 (tim=
estamp not used)<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=
=3D"font-size:11pt;font-family:Calibri,sans-serif">Bit 124 =3D 0 or 1 (depe=
nding upon if end-of-burst or not)<u></u><u></u></span></p><p class=3D"MsoN=
ormal"><span style=3D"font-size:11pt;font-family:Calibri,sans-serif">Bit 12=
3-112 =3D sequence number (monotonically increasing for each packet startin=
g at 0)<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-=
size:11pt;font-family:Calibri,sans-serif">Bit 111-96 =3D packet length (tot=
al number of data bytes + 8 header bytes)<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sans-serif=
">Bit 95-80 =3D src_sid (from noc_shell)<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sans-serif=
">Bit 79-64 =3D next_dst_sid (from noc_shell)<u></u><u></u></span></p><p cl=
ass=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sans-se=
rif">Bit 63-0 =3D 0<u></u><u></u></span></p><p class=3D"MsoNormal"><span st=
yle=3D"font-size:11pt;font-family:Calibri,sans-serif"><u></u>=C2=A0<u></u><=
/span></p><p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:=
Calibri,sans-serif">What might cause data_tready to remain low? Is there an=
ything else I should be looking at that might explain this behavior?<u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:11pt;font=
-family:Calibri,sans-serif"><br>Thank you,<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span style=3D"font-family:Calibri,sans-serif"><u></u>=C2=A0=
<u></u></span></p><p class=3D"MsoNormal"><b><span style=3D"font-family:Cali=
bri,sans-serif;color:black">Michael H. Rich</span></b><span style=3D"font-f=
amily:Calibri,sans-serif;color:rgb(31,73,125)"><u></u><u></u></span></p><p =
class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Calibri,sa=
ns-serif;color:black">Electronic Systems Laboratory</span></i><span style=
=3D"font-family:Calibri,sans-serif;color:rgb(31,73,125)"><u></u><u></u></sp=
an></p><p class=3D"MsoNormal"><b><i><span style=3D"font-size:10pt;font-fami=
ly:Calibri,sans-serif;color:black">Georgia Tech Research Institute=C2=AE</s=
pan></i></b><span style=3D"font-family:Calibri,sans-serif;color:rgb(31,73,1=
25)"><u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-si=
ze:10pt;font-family:Calibri,sans-serif;color:black">Phone: (404) 407-8358</=
span><span style=3D"font-family:Calibri,sans-serif;color:rgb(31,73,125)"><u=
></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:10pt=
;font-family:Calibri,sans-serif;color:black">E-mail:</span><span style=3D"f=
ont-size:10pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)"> <a href=
=3D"mailto:michael.rich@gtri.gatech.edu" target=3D"_blank"><span style=3D"c=
olor:blue">michael.rich@gtri.gatech.edu</span></a></span><span style=3D"fon=
t-family:Calibri,sans-serif;color:rgb(31,73,125)"><u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span style=3D"font-family:Calibri,sans-serif"><u></=
u>=C2=A0<u></u></span></p><p><span style=3D"font-size:11pt;font-family:Cali=
bri,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p><p><spa=
n style=3D"font-family:Calibri,sans-serif"><u></u>=C2=A0<u></u></span></p><=
/div></div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000002bed2f05c009b879--

--===============6397111491005232211==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6397111491005232211==--
