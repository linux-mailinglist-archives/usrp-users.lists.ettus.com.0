Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C918737673B
	for <lists+usrp-users@lfdr.de>; Fri,  7 May 2021 16:51:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E3B8738420B
	for <lists+usrp-users@lfdr.de>; Fri,  7 May 2021 10:51:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CD0BChB/";
	dkim-atps=neutral
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mm2.emwd.com (Postfix) with ESMTPS id E330A3841E1
	for <USRP-users@lists.ettus.com>; Fri,  7 May 2021 10:50:14 -0400 (EDT)
Received: by mail-qk1-f174.google.com with SMTP id a2so8634763qkh.11
        for <USRP-users@lists.ettus.com>; Fri, 07 May 2021 07:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=aK27gTAgIBOhBfV7NTKebjMgTCb3dXyyvRn+xUCf6q4=;
        b=CD0BChB/iAkDENWq0b6tNleTTSC3HwwZJF+AUTSdS4uzmcZyl0pKos+djmiKAjGVar
         c6D8QyrF2YNaS2SEU1b4nN9bFxAZqQmCHrvXucM9JyvHmN8m+bVp3o1612F9ruZC7jQi
         QBB1fou+V/q5FOyTpVKOri1VGuRd3WXWG+25UwI3083p0wgSlUhhrCTKJT4no2/8fTHy
         oyYE/0LGAFkswgx2Rfe3wl4YspVAKcQqY4Xx325VqkOUzRFmHBc12TYAe6/i5Bdy1qkR
         3gfkVSTWSgZ3RLy54ksO4cYSCuPUm36c4qAP6aEFpmPk3NkC0E9VraDGoB8Fo+zcOIEe
         xnTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=aK27gTAgIBOhBfV7NTKebjMgTCb3dXyyvRn+xUCf6q4=;
        b=msHOm/aF4bQcRnH3spTzTzpBmYTCSnU9S2SbZzx9p5FLTqgSoDtcSaSnR9Mj4gyepR
         VyFHtIrw/AekF4I7wqQlmpJPR6eK83iKp0jqFT/d/T7rBYORumoyFyW5K64txT1yJ7Us
         95miwHtUN7GWDJzd+p9dk3KPqBPFW/dmmcEWa3I/OXxifuEli67s4OQpxig6XTmoOU6j
         NOaCJ34imrB8u+AjrYLDhwc0FBwt4l56EJeD8ituOblyqoEDwfojEeMkTlNoggAL4tYX
         1CKD3fITqVyuusncMwTs8XWWGsZH0mjRygN5hBqP1uUUyypH1xeTFRt5EkLSzWUYrxhn
         R8rQ==
X-Gm-Message-State: AOAM531LII0heZo1xhEg5qoOiwhKXQZY2/0pyhvsRXpUhnyh2rUyINl6
	JeLXJPBqkXC5JgAKhuvsT+I=
X-Google-Smtp-Source: ABdhPJx1TjEvxn8xsOaPrNr6TsLTDNeWn7qLyemhBuadrjJabVoz33G38YSezzaIfqEpYVvkxPKMuA==
X-Received: by 2002:a37:43d4:: with SMTP id q203mr10189719qka.124.1620399014267;
        Fri, 07 May 2021 07:50:14 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id a26sm5420019qtg.60.2021.05.07.07.50.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 May 2021 07:50:13 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 7 May 2021 10:50:13 -0400
Message-Id: <4FD0B0DF-5E71-45EF-AFFB-6B5787776E17@gmail.com>
References: <CAB__hTR9ck3nYJpv2_a-U+8PYQtuEuDcKfQLFdBy2s3P+8Fo7w@mail.gmail.com>
In-Reply-To: <CAB__hTR9ck3nYJpv2_a-U+8PYQtuEuDcKfQLFdBy2s3P+8Fo7w@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: A3QUS2AZCFMCH3WBS4FV7Y6SPPCCBSMC
X-Message-ID-Hash: A3QUS2AZCFMCH3WBS4FV7Y6SPPCCBSMC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 / E320 high bandwith / high datarate two channel RX capture
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A3QUS2AZCFMCH3WBS4FV7Y6SPPCCBSMC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8358128703164927274=="


--===============8358128703164927274==
Content-Type: multipart/alternative; boundary=Apple-Mail-CBB2279F-EF7B-43C5-96E7-FE15DC14BFFC
Content-Transfer-Encoding: 7bit


--Apple-Mail-CBB2279F-EF7B-43C5-96E7-FE15DC14BFFC
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Indeed the E310 RFFE chip has clocking restrictions so that two channels are=
 limited to less than 32MHz.=20

I=E2=80=99m not certain about the E320.=20

Sent from my iPhone

> On May 7, 2021, at 10:45 AM, Rob Kossler <rkossler@nd.edu> wrote:
>=20
> =EF=BB=BF
> Hi Martin,
> I am concerned that these devices, E3xx, cannot handle 2 channels at 56 MS=
/s (or 61MS/s).  My understanding (but I am not 100% sure) is that these dev=
ices can handle 1 channel at those rates, but that the max rate for 2 channe=
ls is 30.72 MS/s.
> Rob
>=20
>> On Fri, May 7, 2021 at 9:41 AM Martin <usrp-users-list@olifantasia.com> w=
rote:
>> Hi,
>>=20
>> Do you have experience with high bandwidth capture on E310 or E320?
>>=20
>> We want to use an E310 or E320 for 56 MSPS (or 61.44 MSPS) dual channel=20=

>> RX captures.
>> We want to capture into a circular buffer and after a certain signal=20
>> signal level is observed set a time to stop capturing after 0.3 seconds.=20=

>> So we only use the last 0.3 second of captured data.
>>=20
>> We are thinking of using a E320. This has a high speed SFP+ 10 gbit port.=

>> Can it stream 2 channel 56 MSPS data to a host-PC continuously to a=20
>> host-PC? Or is the ARM processor a bottleneck, like on the E310, which=20=

>> seems to be limited to max 16MSPS due to the limited arm processor speed.=

>> And can it stream that fast with its default FPGA firmware image, so=20
>> there would be no need for RFNoc work and expensive Vivado license.
>>=20
>> And if we do need the Xilinx vivado license. Which version do we need?
>>=20
>> Alternatively we could try to use the E310 which has a smaller FPGA that=20=

>> is supported by the free webpack of vivado.
>> Because it does not have a 10 gbit ethernet we would have to capture to=20=

>> memory.
>> I have read that the E310 arm processing is not able to keep up with=20
>> more then 16 MSPS captures. So just streaming to the ARM memory in the=20=

>> E310 would not work.
>> But if we could someway capture to the 512 MB DDR ram on the FPGA side=20=

>> (use it as a circular buffer) and afterwards slowly move it to the arm=20=

>> and from there to the host-PC then that would be fine.
>>=20
>> Alternatively I heard that high datarate (56 MSPS) capture on E310 is=20
>> possible in some way using RFNoc. Is that true? How would that work.
>>=20
>> It would help me a lot if you give me some hints or tell me about your=20=

>> experience of high bandwidth capturing on E3XX devices.. Even if you do=20=

>> not know all the answers.
>>=20
>> With best regards,
>>=20
>> Martin Dudok van Heel
>>=20
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-CBB2279F-EF7B-43C5-96E7-FE15DC14BFFC
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Indeed the E310 RFFE chip has clocking rest=
rictions so that two channels are limited to less than 32MHz.&nbsp;<div><br>=
</div><div>I=E2=80=99m not certain about the E320.&nbsp;<br><br><div dir=3D"=
ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite"=
>On May 7, 2021, at 10:45 AM, Rob Kossler &lt;rkossler@nd.edu&gt; wrote:<br>=
<br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<=
div dir=3D"ltr"><div>Hi Martin,</div><div>I am concerned that these devices,=
 E3xx, cannot handle 2 channels at 56 MS/s (or 61MS/s).&nbsp; My understandi=
ng (but I am not 100% sure) is that these devices can handle 1 channel at th=
ose rates, but that the max rate for 2 channels is 30.72 MS/s.</div><div>Rob=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Fri, May 7, 2021 at 9:41 AM Martin &lt;<a href=3D"mailto:usrp-users-list@o=
lifantasia.com">usrp-users-list@olifantasia.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
Do you have experience with high bandwidth capture on E310 or E320?<br>
<br>
We want to use an E310 or E320 for 56 MSPS (or 61.44 MSPS) dual channel <br>=

RX captures.<br>
We want to capture into a circular buffer and after a certain signal <br>
signal level is observed set a time to stop capturing after 0.3 seconds. <br=
>
So we only use the last 0.3 second of captured data.<br>
<br>
We are thinking of using a E320. This has a high speed SFP+ 10 gbit port.<br=
>
Can it stream 2 channel 56 MSPS data to a host-PC continuously to a <br>
host-PC? Or is the ARM processor a bottleneck, like on the E310, which <br>
seems to be limited to max 16MSPS due to the limited arm processor speed.<br=
>
And can it stream that fast with its default FPGA firmware image, so <br>
there would be no need for RFNoc work and expensive Vivado license.<br>
<br>
And if we do need the Xilinx vivado license. Which version do we need?<br>
<br>
Alternatively we could try to use the E310 which has a smaller FPGA that <br=
>
is supported by the free webpack of vivado.<br>
Because it does not have a 10 gbit ethernet we would have to capture to <br>=

memory.<br>
I have read that the E310 arm processing is not able to keep up with <br>
more then 16 MSPS captures. So just streaming to the ARM memory in the <br>
E310 would not work.<br>
But if we could someway capture to the 512 MB DDR ram on the FPGA side <br>
(use it as a circular buffer) and afterwards slowly move it to the arm <br>
and from there to the host-PC then that would be fine.<br>
<br>
Alternatively I heard that high datarate (56 MSPS) capture on E310 is <br>
possible in some way using RFNoc. Is that true? How would that work.<br>
<br>
It would help me a lot if you give me some hints or tell me about your <br>
experience of high bandwidth capturing on E3XX devices.. Even if you do <br>=

not know all the answers.<br>
<br>
With best regards,<br>
<br>
Martin Dudok van Heel<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-CBB2279F-EF7B-43C5-96E7-FE15DC14BFFC--

--===============8358128703164927274==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8358128703164927274==--
