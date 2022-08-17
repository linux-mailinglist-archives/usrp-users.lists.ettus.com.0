Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3139A597013
	for <lists+usrp-users@lfdr.de>; Wed, 17 Aug 2022 15:45:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3E302383A89
	for <lists+usrp-users@lfdr.de>; Wed, 17 Aug 2022 09:45:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660743946; bh=IbeBa54n+Z5ksgVzRd52I8c7xvrH9hizrquMb7aAY/I=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=VOMdAQfOXSYZFjOS+aRxSEsXSJZ2pmq7oRsztAUsuprISRw38edlKiWrXKspwBQh9
	 0eA06w9MjtwhMdoQt7e1SbehQNQwGyehMjUImYUwJXOfMluJmZVVKqspDdiC8j3fou
	 5TM1GGVQBP0xTOMX104AksA+esrJXdU/FsgmLeBLrULAxNtaX32jcIZMpsqSihx0L1
	 joWZFLrynPbx0GD3bcCxaKijSznbnxn7gzC6v2ppmOpUeaM0f+DcSNaNDol9YO4NYc
	 vZCYuZeOrU7IRpSmnOjrrHYQdreZv8aPeWfFYLwGZi+EcboD/N8TCVie6YSF2x1U2D
	 +rZdla4OBBc/w==
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 688E0383973
	for <usrp-users@lists.ettus.com>; Wed, 17 Aug 2022 09:44:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aDlQOqr+";
	dkim-atps=neutral
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-32fd97c199fso207178737b3.6
        for <usrp-users@lists.ettus.com>; Wed, 17 Aug 2022 06:44:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=FzMIDMIB5jWuJwLWl98P/R7NRCDauchXiZinu3NS0tw=;
        b=aDlQOqr+0WZsYz7nryTMCpC/53qaN1LmniUeTrkg7qmucSPPr+3lj51JzdW7TKYTfF
         pNk+rC35ArBwN8LB6/RSBPGx+rZQb01ErjjTttTwAZ9HuqdfNijwKOY51YBzdCsfAAzO
         VQbP9ljoONA4np7f8zegztLWFnxZuvkue6LTQLv8ZTdq7Nsky/2VLJBXwxfHWczwM4Yz
         b7/5ea7baF47fHCGcioBi20NmuSfxf8Ln88uWt2zp9rJyZlEXXYVG9NHCbKD5a8iIR/L
         trURLIz2pwU7brVaVLkjEf9R0lOaRGUuUDZi7UUQ3m0hKdDruzDHMq/QUkFqEHDYpbG3
         K+iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=FzMIDMIB5jWuJwLWl98P/R7NRCDauchXiZinu3NS0tw=;
        b=id9KcKBEmnpmcUIN2g5HaPavp24g6deT4UQy8BaloG+eqEDnwJdzOQJdn15PBwP6RL
         V8Es88nkbwRodBiK2tAvksqJ5hEhSpprtIqHq4xHvtAuoi8Hsof1bL7Nd/DFn4aUTG/T
         KTPYOXTZ4LDHuTVEzGY88xqAWWkUD0FYeljIohHm33pKmGUVhRnGrprH+UZsuHW0L5+c
         9oUNbxMU7TSJfk15IdM0mI+IOZaDXkuCHBAw6Q+iFZ65STfZYs3TPpCi3KeHs34z5RPp
         j6rdueP/VbyMRXjqYHQ9w/3n8Nr1HPWzVwWK+j47K0v0OllDwbk0KLjDwVSXpUw2OzjW
         NoQg==
X-Gm-Message-State: ACgBeo3v498nL0DN9ZJ4G1/LYRUnsEIzYlFoTybP4WJSj7tGd+5H3Lpr
	HH7YRiWrtBdENACu8P8xGJhI32CD/3kpzD8KYC3Gsc5YHQ==
X-Google-Smtp-Source: AA6agR7j/xOSC1LdBdX5pGu9rnfl2w4ap+HiAhQmz/Velns/VKmKkK2rcn1m661ghUOpjQvFMVm0D5Lnm2qEYWlbdj0=
X-Received: by 2002:a81:6309:0:b0:323:6fd9:8f36 with SMTP id
 x9-20020a816309000000b003236fd98f36mr21075097ywb.96.1660743862538; Wed, 17
 Aug 2022 06:44:22 -0700 (PDT)
MIME-Version: 1.0
References: <BYAPR03MB4678DE3E20CEF1CA12103A0BD36B9@BYAPR03MB4678.namprd03.prod.outlook.com>
In-Reply-To: <BYAPR03MB4678DE3E20CEF1CA12103A0BD36B9@BYAPR03MB4678.namprd03.prod.outlook.com>
From: =?UTF-8?B?WWFzaXIgw5Z6w6dhbMSxaw==?= <simultaneous11@gmail.com>
Date: Wed, 17 Aug 2022 16:44:11 +0300
Message-ID: <CALooG3-_s4UvbRd+tz2KszGzL-GGnH=+6QLg9DK06+toja26bQ@mail.gmail.com>
To: "Minutolo, Lorenzo" <minutolo@caltech.edu>
Message-ID-Hash: HYQMT6JSMGHID62DXDPREDXVL3GYXO5O
X-Message-ID-Hash: HYQMT6JSMGHID62DXDPREDXVL3GYXO5O
X-MailFrom: simultaneous11@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc custom block design workflow
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HYQMT6JSMGHID62DXDPREDXVL3GYXO5O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3726210475855505727=="

--===============3726210475855505727==
Content-Type: multipart/alternative; boundary="000000000000fd567905e6700fef"

--000000000000fd567905e6700fef
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Lorenzo,
I am not much experienced with RFNoC workflow, but I have added custom
logic into RFNoC. While doing that, I analyzed the gain example. In the
gain example, there are 3 different options; HDL_IP, IN_TREE_IP and
OUT_OF_TREE_IP. For the OUT_OF_TREE_IP option, it uses Xilinx Complex
multiplier IP and they only used its ."xci" file. I have also added DDS
Xilinx IP by using its ".xci" file. So, if you want to add Xilinx IP, all
you need is the ".xci" file of that IP.

Xilinx IPs have an AXI Interface as a standard, but it does not mean you
cannot use it in RFNoC. RFNoC has ctrl_ports which you can create registers
and control from the host and has payload ports which transfers ADC and DAC
datas. Therefore; you have all you need to add any design in Verilog. You
can add any IP in verilog by instantiation (i.e., Complex Multiplier IP in
gain example) and control that IP with registers and your own algorithms.

For the block design approach, I do not know how to add it into RFNoC. As I
have seen it, the RFNoC workflow does not work that way. Therefore; that
might be easier to use verilog for algorithms and ".xci" file for IPs.

Yasir

Minutolo, Lorenzo <minutolo@caltech.edu>, 17 A=C4=9Fu 2022 =C3=87ar, 02:34 =
tarihinde
=C5=9Funu yazd=C4=B1:

> Hi All,
> I'm trying to make a custom OOT block for rfnoc4.
> I already went through the synthesis of the stock rfnoc firmware, as well
> as the gain example: all works well on my x300.
> I added some custom logic in the gain example's verilog and I am quite
> satisfied with the results.
>
> The next step for me is to integrate a more complex design that includes
> CORDICs, FFTs and other IPs from Xilinx.
> To do that, I plan to develop a block design in Vivado and pass it to the
> rfnoc infrastructure.
>
> I'd like to know if you attempted this workflow and if there is a guide o=
f
> some sort for getting started.
>
> Right now, I am quite lost.
>
>    1. The IPs that Vivado generate have an AXI interface, I suspect I
>    cannot directly reproduce the steps to implement the gain block.
>    2. Once I have my top module, how do I integrate it in the rfnoc
>    workflow?
>
> A basic example of the gain block (or even an empty pass-through block)
> implemented via the Vivado block design technique would be really
> appreciated.
>
> I work for a non-profit research institution (Caltech); all my results
> will be available under some open-source license. My plan is also to
> release a guide that documents how I developed the firmware.
>
> Thanks,
> Lorenzo
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000fd567905e6700fef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Lorenzo,<div>I am not much experienced with RFNoC workf=
low, but I have added custom logic into RFNoC. While doing that, I analyzed=
 the gain example. In the gain example, there are 3 different options; HDL_=
IP, IN_TREE_IP and OUT_OF_TREE_IP. For the OUT_OF_TREE_IP option, it uses X=
ilinx Complex multiplier IP and they only=C2=A0used its .&quot;xci&quot; fi=
le. I have also added DDS Xilinx IP by using its &quot;.xci&quot; file. So,=
 if you want to add Xilinx IP, all you need is the &quot;.xci&quot; file of=
 that IP.</div><div><br></div><div>Xilinx IPs have an AXI Interface as a st=
andard, but it does not mean you cannot use it in RFNoC. RFNoC has ctrl_por=
ts which you can create registers and control from the host and has payload=
 ports which transfers ADC and DAC datas. Therefore; you have all you need =
to add any design in Verilog. You can add any IP in verilog by instantiatio=
n (i.e., Complex Multiplier IP in gain example) and control that IP with re=
gisters and your own algorithms.</div><div><br></div><div>For the block des=
ign approach, I do not know how to add it into RFNoC. As I have seen it, th=
e RFNoC workflow does not work that way. Therefore; that might be easier to=
 use verilog for algorithms and &quot;.xci&quot; file for IPs.</div><div><b=
r></div><div>Yasir</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">Minutolo, Lorenzo &lt;<a href=3D"mailto:minutolo@ca=
ltech.edu">minutolo@caltech.edu</a>&gt;, 17 A=C4=9Fu 2022 =C3=87ar, 02:34 t=
arihinde =C5=9Funu yazd=C4=B1:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div class=3D"msg121745387599457725">




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

--000000000000fd567905e6700fef--

--===============3726210475855505727==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3726210475855505727==--
