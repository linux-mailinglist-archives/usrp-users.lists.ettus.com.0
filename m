Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7327B6A5CC1
	for <lists+usrp-users@lfdr.de>; Tue, 28 Feb 2023 17:06:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 991BE384809
	for <lists+usrp-users@lfdr.de>; Tue, 28 Feb 2023 11:06:02 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677600362; bh=Aj6Cq+WIGg654xRFEwhaZfmC7lMAD258XejHqpyGeCY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=GB67t1odA9R9px4ipZgGQWCkCk+jgf5K31YTFWkowooIEEWloC4LNIlPmz50DvNRo
	 aMERbh1WZZevDkGCIWUW5duFbeYSmoQUbrmGFyaFB3pW6vWrHmE6kP83vTO0OHhObE
	 ZUpJVHzIu75/TMM8TY4OoXgcuApJz+5ukOJ92NBN084KVNxrNxt73Gu1OAli3xMjVS
	 UVUZrQ691xFXa5j8yfp/fWRkN9/ab5b5UB90UnFYwnoT0AGMg6cRvptF0KBXrQamnz
	 TkGjSVqJoi0goGUM6JGy7RgeB66qOBe0HuTjlDaC6OTqJNMuWcGpnEKJ3uoc6rHJM5
	 lByRYHsqAFnyA==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id A85FF38464C
	for <usrp-users@lists.ettus.com>; Tue, 28 Feb 2023 11:05:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="C+RZFXjI";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id ec43so42061337edb.8
        for <usrp-users@lists.ettus.com>; Tue, 28 Feb 2023 08:05:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=p5pLRVnnmMT4TqNFmFzBKwY+kPxo7oPgardA6/fQBD4=;
        b=C+RZFXjIC7yzSgLQtWp9BbMhl9TyzrVwhyBmTm8wD0NBbGzQRriUe6P0RBIFNVbcfU
         kxAO4eJgWF7enI1wzSEbUHLTBNwXOfEaL/X0+odP/M553wdtO5ZLD2TbPW5+UBRqlSMo
         ft7MLZMUgBtSkskIyxP7nLRsAzuzGrcZzafOhkDgO177tpP9d3CksvCWP01DGn1axZby
         Zh6vZc2xTEJDcFsdyNNNcg9Yl3ATmrOF+MidDJQO1/dC0Z0E3WcEDiCwnku3jUNvXZjj
         /z55jwIBnySjbM4Vs0nGAy0d380CjTTU91ppHLhaWKbmg9q/krsmTmyG0soOVlzbB7Zi
         KKig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p5pLRVnnmMT4TqNFmFzBKwY+kPxo7oPgardA6/fQBD4=;
        b=4PkGhlZSmZMmXZz8WIZMIskb2NmVY9JPK5GaICgS3zZjJ/PiFUR0g2IbAk3/fMOd7Q
         Fj9ShMeikQKrbPCn+Z+aH3bJNfQS0ZgQVYemg2TsJRKmaXxc2cfgz0XAIJBW9iuFv20m
         tAAfX9zVp4Knrj/mnnkEUEuzBCQJ0xAPTwtIyd7OkR69EhCOLMEJydR4r1ACVtTKA/ke
         JlIVVCT48zo4hpiqGVI8SGvJhMeSxzvhPQqeSZW0BQV8GrYKlu6xtVWa5lHflMi6RrCj
         D+ERhBfB5oUj9ReWdgEMJRR4LLMdauZqDBdGGC+DepCk3iTydsGgoB+fNJH13I9DSR11
         GBCg==
X-Gm-Message-State: AO0yUKXCYs210loWqMqeqX7gLPyfGJXVn5l7EMT+iAjfSAkHskX0ie10
	hgU8w5XU1I70958Vds/je6SuV80xjvkoWftFOHnZyojDpnrzOw==
X-Google-Smtp-Source: AK7set8jq7aMjIfAnDFeehQzij/yGBKx1MvRcoX0sjnAYIWPabkk/ZSuaS5QCnhQpg00TZtC8spcJVV+iBbB6NXuG4I=
X-Received: by 2002:a50:d6cf:0:b0:4ad:6052:ee88 with SMTP id
 l15-20020a50d6cf000000b004ad6052ee88mr1972779edj.2.1677600317223; Tue, 28 Feb
 2023 08:05:17 -0800 (PST)
MIME-Version: 1.0
References: <BYAPR03MB4678EE49DAAAC66609F5D22FD3AF9@BYAPR03MB4678.namprd03.prod.outlook.com>
In-Reply-To: <BYAPR03MB4678EE49DAAAC66609F5D22FD3AF9@BYAPR03MB4678.namprd03.prod.outlook.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 28 Feb 2023 11:05:05 -0500
Message-ID: <CAB__hTTBdCQ2SjFRCGqi4kNdO1iNPGbfVrLLePYx0R8QXJxyMw@mail.gmail.com>
To: "Minutolo, Lorenzo" <minutolo@caltech.edu>
Message-ID-Hash: PNJJ6TQGHTV3AWJBUE5T7HDEPV3VVXFA
X-Message-ID-Hash: PNJJ6TQGHTV3AWJBUE5T7HDEPV3VVXFA
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC packet size - Keep one in N
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PNJJ6TQGHTV3AWJBUE5T7HDEPV3VVXFA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3166109686204634139=="

--===============3166109686204634139==
Content-Type: multipart/alternative; boundary="000000000000fbf4e005f5c4c2c3"

--000000000000fbf4e005f5c4c2c3
Content-Type: text/plain; charset="UTF-8"

Hi Lorenzo,
Regarding the SPP=364, this sounds like it is being set according to your
Ethernet transport MTU. Sometimes the NIC defaults to MTU=1500 rather than
9000. If I am right it means that even if you created a graph without K1N,
you would still get SPP=364.  If the Ethernet MTU is set to 9000, I would
expect that the SPP would resolve to 2000.

Regarding the 2048 vs 2044, you might be running into a limitation there.
With the packet header bytes, the maximum payload length might not be able
to reach 2048 - I'm not really certain.  But, as a test, you could try 2000
(after you resolve the SPP=364 issue).
Rob

On Mon, Feb 27, 2023 at 6:36 PM Minutolo, Lorenzo <minutolo@caltech.edu>
wrote:

> Hi All,
> I am trying to build a firmware for an x300 device that uses the radio
> block and the Keep-1-in-N block using UHD 4.4.
> For my application I need the Keep-1-in-N block to operate in packet
> mode, on packets 2048 samples long.
>
> Before connecting the graph, I try to set the radio block to use packets
> of that length with the following command (C++):
> radio_control->set_property<int>("spp", 2048, 0);
> The first issue arises as, calling the function to check the spp, I read
> 2044 instead of 2048.
>
> After connecting the graph with radio RX->K1N->RX_streamer I check again
> for the radio spp and I get 364.
>
> Reading this page:
>
> https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#What_is_the_SEP_buffer_size.3F
>
> I understand I could possibly use a larger packet by changing the CHDR
> width of the design. If I change the value in my YML file, I get Vivado to
> throw an error saying that 64 is the only value supported for the device.
>
> Running the design compiled with 64 bit CHDR width results in an even
> different packet size written on file.
>
> The questions are:
>
>    1. how can I make the radio to work with packets 2048 samples long in
>    a x300? Does changing the SEP buffer size help? I'm currently using 8192 as
>    buffer size.
>    2. why introducing the K1N block reduces the packet size to 364
>    samples? how do I change this behaviour?
>
> I can share the whole code/firmware if needed.
>
> Thanks in advance for the help.
> Lorenzo
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000fbf4e005f5c4c2c3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Lorenzo,<div>Regarding the SPP=3D364, this sounds like =
it is being set according to your Ethernet transport MTU. Sometimes the NIC=
=C2=A0defaults to MTU=3D1500 rather than 9000. If I am right it means that =
even if you created a graph without K1N, you would still get SPP=3D364.=C2=
=A0 If the Ethernet MTU is set to 9000, I would expect that the SPP would r=
esolve to 2000.</div><div><br></div><div>Regarding the 2048 vs 2044, you mi=
ght be running into a limitation there. With the packet header bytes, the m=
aximum payload length might not be able to reach 2048 - I&#39;m not really =
certain.=C2=A0 But, as a test, you could try 2000 (after you resolve the SP=
P=3D364 issue).</div><div>Rob</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 27, 2023 at 6:36 PM Minutolo=
, Lorenzo &lt;<a href=3D"mailto:minutolo@caltech.edu">minutolo@caltech.edu<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div class=3D"msg-8672289987009370211">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Hi All,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
I am trying to build a firmware for an x300 device that uses the radio bloc=
k and the Keep-1-in-N block using UHD 4.4.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
For my application I need the=C2=A0<span style=3D"background-color:rgb(255,=
255,255);display:inline">Keep-1-in-N block to operate in packet mode, on pa=
ckets 2048 samples long.</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<span style=3D"background-color:rgb(255,255,255);display:inline"><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<span style=3D"background-color:rgb(255,255,255);display:inline">Before con=
necting the graph, I try to set the radio block to use packets of that leng=
th with the following command (C++):</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<span style=3D"background-color:rgb(255,255,255);display:inline">radio_cont=
rol-&gt;set_property&lt;int&gt;(&quot;spp&quot;, 2048, 0);<br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
The first issue arises as, calling the function to check the spp, I read 20=
44 instead of 2048.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
After connecting the graph with radio RX-&gt;K1N-&gt;RX_streamer I check ag=
ain for the radio spp and I get 364.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Reading this page:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<a href=3D"https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#What_is_th=
e_SEP_buffer_size.3F" id=3D"m_-8672289987009370211LPlnk878763" target=3D"_b=
lank">https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#What_is_the_SEP=
_buffer_size.3F</a><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
I understand I could possibly use a larger packet by changing the CHDR widt=
h of the design. If I change the value in my YML file, I get Vivado to thro=
w an error saying that 64 is the only value supported for the device.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Running the design compiled with 64 bit CHDR width results in an even diffe=
rent packet size written on file.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
The questions are:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<ol>
<li><span>how can I make the radio to work with packets 2048 samples long i=
n a x300? Does changing the SEP buffer size help? I&#39;m currently using 8=
192 as buffer size.</span></li><li><span>why introducing the K1N block redu=
ces the packet size to 364 samples? how do I change this behaviour?</span><=
/li></ol>
<div><span>I can share the whole code/firmware if needed.</span></div>
<div><span><br>
</span></div>
<div><span>Thanks in advance for the help.</span></div>
<div><span>Lorenzo</span></div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000fbf4e005f5c4c2c3--

--===============3166109686204634139==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3166109686204634139==--
