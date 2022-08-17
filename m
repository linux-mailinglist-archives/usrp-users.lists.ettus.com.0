Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FDE8597303
	for <lists+usrp-users@lfdr.de>; Wed, 17 Aug 2022 17:34:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E0AE53846E5
	for <lists+usrp-users@lfdr.de>; Wed, 17 Aug 2022 11:34:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660750497; bh=BCv4XI+zRtVK8I/4IsfQFGvFqbfeOPxQJC/9TF9uWdA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=tEmiX5titgeYs5zI1qqdvk3NcpvsRE9sO1HFZ8cCADPx/5gtmQSendQe9NO7grtmE
	 et19tTlXYhAYQkDjGmovnzcwvNk3WSIRfh4HFLZRdzaL9g7OXVNykN3IRSa4GrUgxd
	 p89V907Mmupc/jkCp0qAYZazNgvzuo858GeT5wjCKr5yyVxdZqL/RU6ncyEu3urr0m
	 ws01EWjsbnNX2CPtNed/VKfKGXU/8Irj4H1+FYBddFT+3c7e2iZKmQgZXzuTdR7A+T
	 ciDB5SnZl3GY1LZZwEcQy0N050BQkgpdrtq9pJP7mnCkNEaHK5zwuhnHKx4RAiJH6a
	 nAwIyfnDWVRag==
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 00B863846CB
	for <usrp-users@lists.ettus.com>; Wed, 17 Aug 2022 11:33:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="zohiCi38";
	dkim-atps=neutral
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-333b049f231so129291987b3.1
        for <usrp-users@lists.ettus.com>; Wed, 17 Aug 2022 08:33:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=q6rtfG0du2jIp82ai5r0pS9MFP+2lgIRnFESUZdaoPc=;
        b=zohiCi38W2bhBu0BkpEzGh/xy4lj0ALGzZupmNeYj0Ba229utccujM2nKLiZABdxf7
         zPZmloSYApdsu7qYYTH7d6hn79+YpYSqJUOg4vYIWh2WB8RK8cD+QyDieNYB7RDFaEax
         ClkFGIKc1jwaKLDySHHOHTR46IwULonYe0BeDD7qCWuqnOIgURQ0CPa8QhIusc5AJOce
         VkhQPEbrkWp04cIb0n/BwL3bTsb0BGG1ZMUa51EPQnAllgT5I2abOAF+LwHWq3Ufj6uO
         ATLQMfMV1gSBAgN0WzKZNhKt2SLs7uz/YzCGFjJpD0y0ZkR+TlxcEUgLPozjM1YyCy9C
         Laog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=q6rtfG0du2jIp82ai5r0pS9MFP+2lgIRnFESUZdaoPc=;
        b=yD1khkZwOe0ct5l1yAf/qm3X0DPFY55DOtYcsVzwQdt9qe4PHnbL57HFZjWcRI1j+U
         u5XsyN0ulpw0SGEOWYd1bRvCuCCq1TDZ2ndPuD7xkNncrxIj332Srxqj3NTeABs1wVeu
         Wr6JsZVHIeoDFN7LGPSWluhQYL7HvtKLQw+eIhhGeDL9GZEnKwUQmv5bthdJgHTk/wlO
         QlhtK6dVk93zj1hEI8gQRvsVb1H3GI9yvBThA73tvqK405ww1EFLSQIoNqs8/spstkHA
         swqqCn8J5skjE76YhX57Yc6ZJYonLIxbhgxzKTorKoittQ/aB9s1v0DS5mVj1S1JMhu2
         6FtA==
X-Gm-Message-State: ACgBeo11AuEswYUJZpQMvMsV7wg4VMOWzgkdPm1fbENvxFUUw/k078o2
	el7oppi0KlyaAUBQYS55QbZD+6XWeZRThbVVXwcG/PfNsVi02JW+
X-Google-Smtp-Source: AA6agR6IYSfMyLDlyidQYPCwQX7Be6LVk0ocO4m2E9DiIQsNlj9ylNlYDTp9C88mDFoA8n/vsabvSuWYoWHMWQbr70g=
X-Received: by 2002:a81:44a:0:b0:334:f251:626e with SMTP id
 71-20020a81044a000000b00334f251626emr3571492ywe.430.1660750415403; Wed, 17
 Aug 2022 08:33:35 -0700 (PDT)
MIME-Version: 1.0
References: <BYAPR03MB4678DE3E20CEF1CA12103A0BD36B9@BYAPR03MB4678.namprd03.prod.outlook.com>
 <CALooG3-_s4UvbRd+tz2KszGzL-GGnH=+6QLg9DK06+toja26bQ@mail.gmail.com>
In-Reply-To: <CALooG3-_s4UvbRd+tz2KszGzL-GGnH=+6QLg9DK06+toja26bQ@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 17 Aug 2022 10:33:19 -0500
Message-ID: <CAFche=i11KeSJY1YVUzWk4GRNNMPDqfQDtAdH6eSErG7NkRD8g@mail.gmail.com>
To: =?UTF-8?B?WWFzaXIgw5Z6w6dhbMSxaw==?= <simultaneous11@gmail.com>
Message-ID-Hash: 2XXVJ4AVMA6QRYELQUTPCIOZKWLC5H5N
X-Message-ID-Hash: 2XXVJ4AVMA6QRYELQUTPCIOZKWLC5H5N
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc custom block design workflow
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2XXVJ4AVMA6QRYELQUTPCIOZKWLC5H5N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8271893920621339552=="

--===============8271893920621339552==
Content-Type: multipart/alternative; boundary="00000000000092307805e671961a"

--00000000000092307805e671961a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Lorenzo,

I don't know of any examples of RFNoC blocks that use block designs, but in
principle using a BD is similar to using any other Xilinx IP. If you search
for *.bd files or *_bd.tcl in the UHD repository, you'll find several
examples of IP that is pulled into the USRP code as a block design. When
you build the IP for a BD, you get synthesizable Verilog code. You can then
instantiate the top-level Verilog file for the BD into your RFNoC block's
HDL code.

As an example, maybe look at
fpga/usrp3/top/x300/ip/axi_intercon_2x64_128_bd/

Notice in Makefile.inc how it calls BUILD_VIVADO_BD to build the BD and
generate the HDL files.

Wade

On Wed, Aug 17, 2022 at 8:45 AM Yasir =C3=96z=C3=A7al=C4=B1k <simultaneous1=
1@gmail.com>
wrote:

> Hi Lorenzo,
> I am not much experienced with RFNoC workflow, but I have added custom
> logic into RFNoC. While doing that, I analyzed the gain example. In the
> gain example, there are 3 different options; HDL_IP, IN_TREE_IP and
> OUT_OF_TREE_IP. For the OUT_OF_TREE_IP option, it uses Xilinx Complex
> multiplier IP and they only used its ."xci" file. I have also added DDS
> Xilinx IP by using its ".xci" file. So, if you want to add Xilinx IP, all
> you need is the ".xci" file of that IP.
>
> Xilinx IPs have an AXI Interface as a standard, but it does not mean you
> cannot use it in RFNoC. RFNoC has ctrl_ports which you can create registe=
rs
> and control from the host and has payload ports which transfers ADC and D=
AC
> datas. Therefore; you have all you need to add any design in Verilog. You
> can add any IP in verilog by instantiation (i.e., Complex Multiplier IP i=
n
> gain example) and control that IP with registers and your own algorithms.
>
> For the block design approach, I do not know how to add it into RFNoC. As
> I have seen it, the RFNoC workflow does not work that way. Therefore; tha=
t
> might be easier to use verilog for algorithms and ".xci" file for IPs.
>
> Yasir
>
> Minutolo, Lorenzo <minutolo@caltech.edu>, 17 A=C4=9Fu 2022 =C3=87ar, 02:3=
4
> tarihinde =C5=9Funu yazd=C4=B1:
>
>> Hi All,
>> I'm trying to make a custom OOT block for rfnoc4.
>> I already went through the synthesis of the stock rfnoc firmware, as wel=
l
>> as the gain example: all works well on my x300.
>> I added some custom logic in the gain example's verilog and I am quite
>> satisfied with the results.
>>
>> The next step for me is to integrate a more complex design that includes
>> CORDICs, FFTs and other IPs from Xilinx.
>> To do that, I plan to develop a block design in Vivado and pass it to th=
e
>> rfnoc infrastructure.
>>
>> I'd like to know if you attempted this workflow and if there is a guide
>> of some sort for getting started.
>>
>> Right now, I am quite lost.
>>
>>    1. The IPs that Vivado generate have an AXI interface, I suspect I
>>    cannot directly reproduce the steps to implement the gain block.
>>    2. Once I have my top module, how do I integrate it in the rfnoc
>>    workflow?
>>
>> A basic example of the gain block (or even an empty pass-through block)
>> implemented via the Vivado block design technique would be really
>> appreciated.
>>
>> I work for a non-profit research institution (Caltech); all my results
>> will be available under some open-source license. My plan is also to
>> release a guide that documents how I developed the firmware.
>>
>> Thanks,
>> Lorenzo
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000092307805e671961a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Lorenzo,</div><div><br></div><div>I don&#39;t know=
 of any examples of RFNoC blocks that use block designs, but in principle u=
sing a BD is similar to using any other Xilinx IP. If you search for *.bd f=
iles or *_bd.tcl in the UHD repository, you&#39;ll find several examples of=
 IP that is pulled into the USRP code as a block design. When you build the=
 IP for a BD, you get synthesizable Verilog code. You can then instantiate =
the top-level Verilog file for the BD into your RFNoC block&#39;s HDL code.=
</div><div><br></div><div></div>As an example, maybe look at fpga/usrp3/top=
/x300/ip/axi_intercon_2x64_128_bd/<div><br></div><div>Notice in Makefile.in=
c how it calls=C2=A0<span class=3D"gmail-pl-s">BUILD_VIVADO_BD</span> to bu=
ild the BD and generate the HDL files.<br></div><div><br></div><div>Wade<br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, Aug 17, 2022 at 8:45 AM Yasir =C3=96z=C3=A7al=C4=B1k &lt;<a =
href=3D"mailto:simultaneous11@gmail.com">simultaneous11@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hi Lorenzo,<div>I am not much experienced with RFNoC workflow, but=
 I have added custom logic into RFNoC. While doing that, I analyzed the gai=
n example. In the gain example, there are 3 different options; HDL_IP, IN_T=
REE_IP and OUT_OF_TREE_IP. For the OUT_OF_TREE_IP option, it uses Xilinx Co=
mplex multiplier IP and they only=C2=A0used its .&quot;xci&quot; file. I ha=
ve also added DDS Xilinx IP by using its &quot;.xci&quot; file. So, if you =
want to add Xilinx IP, all you need is the &quot;.xci&quot; file of that IP=
.</div><div><br></div><div>Xilinx IPs have an AXI Interface as a standard, =
but it does not mean you cannot use it in RFNoC. RFNoC has ctrl_ports which=
 you can create registers and control from the host and has payload ports w=
hich transfers ADC and DAC datas. Therefore; you have all you need to add a=
ny design in Verilog. You can add any IP in verilog by instantiation (i.e.,=
 Complex Multiplier IP in gain example) and control that IP with registers =
and your own algorithms.</div><div><br></div><div>For the block design appr=
oach, I do not know how to add it into RFNoC. As I have seen it, the RFNoC =
workflow does not work that way. Therefore; that might be easier to use ver=
ilog for algorithms and &quot;.xci&quot; file for IPs.</div><div><br></div>=
<div>Yasir</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">Minutolo, Lorenzo &lt;<a href=3D"mailto:minutolo@caltech.ed=
u" target=3D"_blank">minutolo@caltech.edu</a>&gt;, 17 A=C4=9Fu 2022 =C3=87a=
r, 02:34 tarihinde =C5=9Funu yazd=C4=B1:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div>




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hi All,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I&#39;m trying to make a custom OOT block for rfnoc4.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I already went through the synthesis of the stock rfnoc firmware, as well a=
s the gain example: all works well on my x300.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I added some custom logic in the gain example&#39;s verilog and I am quite =
satisfied=C2=A0with the results.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
The next step for me is to integrate a more complex design that includes CO=
RDICs, FFTs and other IPs from Xilinx.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
To do that, I plan to develop a block design in Vivado and pass it to the r=
fnoc infrastructure.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I&#39;d like to know if you attempted this workflow and if there is a guide=
 of some sort for getting started.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Right now, I am quite lost.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<ol>
<li><span>The IPs that Vivado generate have an AXI interface, I suspect I c=
annot directly reproduce the steps to implement the gain block.</span></li>=
<li>Once I have my top module, how do I integrate it in the rfnoc workflow?=
</li></ol>
<div>A basic example of the gain block (or even an empty pass-through block=
) implemented via the Vivado block design technique would be really appreci=
ated.</div>
<div><br>
</div>
<div>I work for a non-profit research institution (Caltech); all my results=
 will be available under some open-source license. My plan is also to relea=
se a guide that documents how I developed the firmware.</div>
<div><br>
</div>
<div>Thanks,
<div>Lorenzo</div>
</div>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000092307805e671961a--

--===============8271893920621339552==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8271893920621339552==--
