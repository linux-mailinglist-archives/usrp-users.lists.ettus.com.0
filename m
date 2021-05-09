Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 204E63777F2
	for <lists+usrp-users@lfdr.de>; Sun,  9 May 2021 20:31:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AB835383DC9
	for <lists+usrp-users@lfdr.de>; Sun,  9 May 2021 14:31:55 -0400 (EDT)
Received: from postman.dtnt.info (postman.dtnt.info [62.219.91.51])
	by mm2.emwd.com (Postfix) with ESMTP id ED9E0383DB6
	for <usrp-users@lists.ettus.com>; Sun,  9 May 2021 14:30:59 -0400 (EDT)
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
	by postman.dtnt.info (Postfix) with ESMTPS id EBF0D419C7
	for <usrp-users@lists.ettus.com>; Sun,  9 May 2021 21:30:42 +0300 (IDT)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
	by o.dtnt.email (Postfix) with ESMTP id 9295B9FDDA
	for <usrp-users@lists.ettus.com>; Sun,  9 May 2021 21:30:42 +0300 (IDT)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
	by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id aE1PGX0YevMO for <usrp-users@lists.ettus.com>;
	Sun,  9 May 2021 21:30:40 +0300 (IDT)
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
	by o.dtnt.email (Postfix) with ESMTPSA id 62A4E9FC07
	for <usrp-users@lists.ettus.com>; Sun,  9 May 2021 21:30:40 +0300 (IDT)
Received: by mail-oo1-f41.google.com with SMTP id e7-20020a4ad2470000b02902088d0512ceso195814oos.8
        for <usrp-users@lists.ettus.com>; Sun, 09 May 2021 11:30:40 -0700 (PDT)
X-Gm-Message-State: AOAM5317kQ4mqaXxIKKCyipewTPPjUNROrUyDzk082CQ0gGk7tr9TMnz
	L0Th0JivDYw+syP3DTCPxMByhJwUdxiL5/q+NX4=
X-Google-Smtp-Source: ABdhPJzBxgVsy/sJhIbFfaZ6olAiK+U3CJvaAXB7X5ARuoSE9pRk/I6sahKIhI4oGI3MVMNURpoaO9bRAHV3mxCg+pg=
X-Received: by 2002:a4a:e644:: with SMTP id q4mr13540241oot.58.1620585038156;
 Sun, 09 May 2021 11:30:38 -0700 (PDT)
MIME-Version: 1.0
References: <162054543024.11274.10987340942019938813@mm2.emwd.com>
In-Reply-To: <162054543024.11274.10987340942019938813@mm2.emwd.com>
From: Ofer Saferman <ofer@navigicom.com>
Date: Sun, 9 May 2021 21:30:27 +0300
X-Gmail-Original-Message-ID: <CACDReSweJ=Fb7p0BSyF16wxP+wS4acABv2aSkodBF7c0_0N4OA@mail.gmail.com>
Message-ID: <CACDReSweJ=Fb7p0BSyF16wxP+wS4acABv2aSkodBF7c0_0N4OA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: EBF0D419C7.A73DF
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
Message-ID-Hash: B2A63MTFKZWZKLIJFJV4OFPGVUIPCEDT
X-Message-ID-Hash: B2A63MTFKZWZKLIJFJV4OFPGVUIPCEDT
X-MailFrom: ofer@navigicom.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 / E320 high bandwith / high datarate two channel RX capture
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/B2A63MTFKZWZKLIJFJV4OFPGVUIPCEDT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8335706793423144152=="

--===============8335706793423144152==
Content-Type: multipart/alternative; boundary="00000000000087189a05c1e9dbdc"

--00000000000087189a05c1e9dbdc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

It is not a limitation of the AD9361 chip but rather of its implementation.
The AD9361 can be implemented using a CMOS data interface which limits the
data rate as described. It can also be implemented with an LVDS data
interface that allows full rate of 61.44 Mbps for both Rx channels.
Since the chosen implementation for the E310 (I guess from the answers,
that it is the same  for the E320 as well, although curious) is CMOS data
interface hence the data rate limitation.

I know my answer does not help you because you can't change the hardware
design but I thought you would like to know.

Regards,
Ofer Saferman


On Sun, May 9, 2021 at 10:30 AM <usrp-users-request@lists.ettus.com> wrote:

> Send USRP-users mailing list submissions to
>         usrp-users@lists.ettus.com
>
> To subscribe or unsubscribe via email, send a message with subject or
> body 'help' to
>         usrp-users-request@lists.ettus.com
>
> You can reach the person managing the list at
>         usrp-users-owner@lists.ettus.com
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of USRP-users digest..."Today's Topics:
>
>    1. Re: E310 / E320 high bandwith / high datarate two channel RX capture
>       (Martin)
>
>
>
> ---------- Forwarded message ----------
> From: Martin <usrp-users-list@olifantasia.com>
> To: Marcus D Leech <patchvonbraun@gmail.com>, Rob Kossler <rkossler@nd.edu
> >
> Cc: USRP-users@lists.ettus.com
> Bcc:
> Date: Sat, 8 May 2021 12:13:04 +0200
> Subject: [USRP-users] Re: E310 / E320 high bandwith / high datarate two
> channel RX capture
> So it's a hardware limitation of the AD9361 chip?
> That is very unfortunate.
>
> We were also looking at an option to build our own device based on a
> AD9361 + some Zync FPGA/ARM processor.
> But if it is a hardware limitation of the AD9361 then that would not
> work either.
>
> Thanks for the info.
>
> Best regards,
> Martin
>
>
> On 07-05-2021 17:23, Marcus D Leech wrote:
> > The E320 uses the same RFFE as the E310 so would have the same bandwidth
> > restrictions.
> >
> > Sent from my iPhone
> >
> >> On May 7, 2021, at 10:50 AM, Marcus D Leech <patchvonbraun@gmail.com>
> >> wrote:
> >>
> >> =EF=BB=BFIndeed the E310 RFFE chip has clocking restrictions so that t=
wo
> >> channels are limited to less than 32MHz.
> >>
> >> I=E2=80=99m not certain about the E320.
> >>
> >> Sent from my iPhone
> >>
> >>> On May 7, 2021, at 10:45 AM, Rob Kossler <rkossler@nd.edu> wrote:
> >>>
> >>> =EF=BB=BF
> >>> Hi Martin,
> >>> I am concerned that these devices, E3xx, cannot handle 2 channels at
> >>> 56 MS/s (or 61MS/s).  My understanding (but I am not 100% sure) is
> >>> that these devices can handle 1 channel at those rates, but that the
> >>> max rate for 2 channels is 30.72 MS/s.
> >>> Rob
> >>>
> >>> On Fri, May 7, 2021 at 9:41 AM Martin
> >>> <usrp-users-list@olifantasia.com
> >>> <mailto:usrp-users-list@olifantasia.com>> wrote:
> >>>
> >>>     Hi,
> >>>
> >>>     Do you have experience with high bandwidth capture on E310 or E32=
0?
> >>>
> >>>     We want to use an E310 or E320 for 56 MSPS (or 61.44 MSPS) dual
> >>>     channel
> >>>     RX captures.
> >>>     We want to capture into a circular buffer and after a certain
> signal
> >>>     signal level is observed set a time to stop capturing after 0.3
> >>>     seconds.
> >>>     So we only use the last 0.3 second of captured data.
> >>>
> >>>     We are thinking of using a E320. This has a high speed SFP+ 10
> >>>     gbit port.
> >>>     Can it stream 2 channel 56 MSPS data to a host-PC continuously to=
 a
> >>>     host-PC? Or is the ARM processor a bottleneck, like on the E310,
> >>>     which
> >>>     seems to be limited to max 16MSPS due to the limited arm
> >>>     processor speed.
> >>>     And can it stream that fast with its default FPGA firmware image,
> so
> >>>     there would be no need for RFNoc work and expensive Vivado licens=
e.
> >>>
> >>>     And if we do need the Xilinx vivado license. Which version do we
> >>>     need?
> >>>
> >>>     Alternatively we could try to use the E310 which has a smaller
> >>>     FPGA that
> >>>     is supported by the free webpack of vivado.
> >>>     Because it does not have a 10 gbit ethernet we would have to
> >>>     capture to
> >>>     memory.
> >>>     I have read that the E310 arm processing is not able to keep up
> with
> >>>     more then 16 MSPS captures. So just streaming to the ARM memory
> >>>     in the
> >>>     E310 would not work.
> >>>     But if we could someway capture to the 512 MB DDR ram on the FPGA
> >>>     side
> >>>     (use it as a circular buffer) and afterwards slowly move it to
> >>>     the arm
> >>>     and from there to the host-PC then that would be fine.
> >>>
> >>>     Alternatively I heard that high datarate (56 MSPS) capture on
> >>>     E310 is
> >>>     possible in some way using RFNoc. Is that true? How would that
> work.
> >>>
> >>>     It would help me a lot if you give me some hints or tell me about
> >>>     your
> >>>     experience of high bandwidth capturing on E3XX devices.. Even if
> >>>     you do
> >>>     not know all the answers.
> >>>
> >>>     With best regards,
> >>>
> >>>     Martin Dudok van Heel
> >>>
> >>>     _______________________________________________
> >>>     USRP-users mailing list -- usrp-users@lists.ettus.com
> >>>     <mailto:usrp-users@lists.ettus.com>
> >>>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> >>>     <mailto:usrp-users-leave@lists.ettus.com>
> >>>
> >>> _______________________________________________
> >>> USRP-users mailing list -- usrp-users@lists.ettus.com
> >>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--=20
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--00000000000087189a05c1e9dbdc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello,</div><div dir=3D"ltr"><br></div><d=
iv>It is not a limitation of the AD9361 chip but rather of its implementati=
on.</div><div>The AD9361 can be implemented using a CMOS data interface whi=
ch limits the data rate as described. It can also be implemented with an LV=
DS data interface that allows full rate of 61.44 Mbps for both Rx channels.=
</div><div>Since the chosen implementation for the E310 (I guess from the a=
nswers, that it is the same=C2=A0 for the E320 as well, although curious) i=
s CMOS data interface hence the data rate limitation.</div><div><br></div><=
div>I know my answer does not help you because you can&#39;t change the har=
dware design but I thought you would like to know.</div><div><br></div><div=
>Regards,</div><div>Ofer Saferman<br></div><div><br></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, May 9, 2021 at =
10:30 AM &lt;<a href=3D"mailto:usrp-users-request@lists.ettus.com">usrp-use=
rs-request@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">Send USRP-users mailing list submissions to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users@lists.ettus.com" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a><br>
<br>
To subscribe or unsubscribe via email, send a message with subject or<br>
body &#39;help&#39; to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users-request@lists.ettu=
s.com" target=3D"_blank">usrp-users-request@lists.ettus.com</a><br>
<br>
You can reach the person managing the list at<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users-owner@lists.ettus.=
com" target=3D"_blank">usrp-users-owner@lists.ettus.com</a><br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of USRP-users digest...&quot;Today&#39;s Topics:<br>
<br>
=C2=A0 =C2=A01. Re: E310 / E320 high bandwith / high datarate two channel R=
X capture<br>
=C2=A0 =C2=A0 =C2=A0 (Martin)<br>
<br><br><br>---------- Forwarded message ----------<br>From:=C2=A0Martin &l=
t;<a href=3D"mailto:usrp-users-list@olifantasia.com" target=3D"_blank">usrp=
-users-list@olifantasia.com</a>&gt;<br>To:=C2=A0Marcus D Leech &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.c=
om</a>&gt;, Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_b=
lank">rkossler@nd.edu</a>&gt;<br>Cc:=C2=A0<a href=3D"mailto:USRP-users@list=
s.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a><br>Bcc:=C2=A0=
<br>Date:=C2=A0Sat, 8 May 2021 12:13:04 +0200<br>Subject:=C2=A0[USRP-users]=
 Re: E310 / E320 high bandwith / high datarate two channel RX capture<br>So=
 it&#39;s a hardware limitation of the AD9361 chip?<br>
That is very unfortunate.<br>
<br>
We were also looking at an option to build our own device based on a <br>
AD9361 + some Zync FPGA/ARM processor.<br>
But if it is a hardware limitation of the AD9361 then that would not <br>
work either.<br>
<br>
Thanks for the info.<br>
<br>
Best regards,<br>
Martin<br>
<br>
<br>
On 07-05-2021 17:23, Marcus D Leech wrote:<br>
&gt; The E320 uses the same RFFE as the E310 so would have the same bandwid=
th <br>
&gt; restrictions.<br>
&gt; <br>
&gt; Sent from my iPhone<br>
&gt; <br>
&gt;&gt; On May 7, 2021, at 10:50 AM, Marcus D Leech &lt;<a href=3D"mailto:=
patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; =
<br>
&gt;&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; =EF=BB=BFIndeed the E310 RFFE chip has clocking restrictions so th=
at two <br>
&gt;&gt; channels are limited to less than 32MHz.<br>
&gt;&gt;<br>
&gt;&gt; I=E2=80=99m not certain about the E320.<br>
&gt;&gt;<br>
&gt;&gt; Sent from my iPhone<br>
&gt;&gt;<br>
&gt;&gt;&gt; On May 7, 2021, at 10:45 AM, Rob Kossler &lt;<a href=3D"mailto=
:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; =EF=BB=BF<br>
&gt;&gt;&gt; Hi Martin,<br>
&gt;&gt;&gt; I am concerned that these devices, E3xx, cannot handle 2 chann=
els at <br>
&gt;&gt;&gt; 56 MS/s (or 61MS/s).=C2=A0 My understanding (but I am not 100%=
 sure) is <br>
&gt;&gt;&gt; that these devices can handle 1 channel at those rates, but th=
at the <br>
&gt;&gt;&gt; max rate for 2 channels is 30.72 MS/s.<br>
&gt;&gt;&gt; Rob<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Fri, May 7, 2021 at 9:41 AM Martin <br>
&gt;&gt;&gt; &lt;<a href=3D"mailto:usrp-users-list@olifantasia.com" target=
=3D"_blank">usrp-users-list@olifantasia.com</a> <br>
&gt;&gt;&gt; &lt;mailto:<a href=3D"mailto:usrp-users-list@olifantasia.com" =
target=3D"_blank">usrp-users-list@olifantasia.com</a>&gt;&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Hi,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Do you have experience with high bandwidth =
capture on E310 or E320?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0We want to use an E310 or E320 for 56 MSPS =
(or 61.44 MSPS) dual<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0channel<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0RX captures.<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0We want to capture into a circular buffer a=
nd after a certain signal<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0signal level is observed set a time to stop=
 capturing after 0.3<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0seconds.<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0So we only use the last 0.3 second of captu=
red data.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0We are thinking of using a E320. This has a=
 high speed SFP+ 10<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0gbit port.<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Can it stream 2 channel 56 MSPS data to a h=
ost-PC continuously to a<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0host-PC? Or is the ARM processor a bottlene=
ck, like on the E310,<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0which<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0seems to be limited to max 16MSPS due to th=
e limited arm<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0processor speed.<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0And can it stream that fast with its defaul=
t FPGA firmware image, so<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0there would be no need for RFNoc work and e=
xpensive Vivado license.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0And if we do need the Xilinx vivado license=
. Which version do we<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0need?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Alternatively we could try to use the E310 =
which has a smaller<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0FPGA that<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0is supported by the free webpack of vivado.=
<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Because it does not have a 10 gbit ethernet=
 we would have to<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0capture to<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0memory.<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0I have read that the E310 arm processing is=
 not able to keep up with<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0more then 16 MSPS captures. So just streami=
ng to the ARM memory<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0in the<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0E310 would not work.<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0But if we could someway capture to the 512 =
MB DDR ram on the FPGA<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0side<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0(use it as a circular buffer) and afterward=
s slowly move it to<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0the arm<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0and from there to the host-PC then that wou=
ld be fine.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Alternatively I heard that high datarate (5=
6 MSPS) capture on<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0E310 is<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0possible in some way using RFNoc. Is that t=
rue? How would that work.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0It would help me a lot if you give me some =
hints or tell me about<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0your<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0experience of high bandwidth capturing on E=
3XX devices.. Even if<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0you do<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0not know all the answers.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0With best regards,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Martin Dudok van Heel<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0___________________________________________=
____<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0USRP-users mailing list -- <a href=3D"mailt=
o:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com<=
/a><br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users@lis=
ts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0To unsubscribe send an email to <a href=3D"=
mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave=
@lists.ettus.com</a><br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users-lea=
ve@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>&=
gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt;&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-l=
eave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a=
><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--00000000000087189a05c1e9dbdc--

--===============8335706793423144152==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8335706793423144152==--
