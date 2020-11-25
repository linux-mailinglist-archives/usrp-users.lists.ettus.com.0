Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B162C4136
	for <lists+usrp-users@lfdr.de>; Wed, 25 Nov 2020 14:37:11 +0100 (CET)
Received: from [::1] (port=42506 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1khuyq-0005UO-Ni; Wed, 25 Nov 2020 08:37:08 -0500
Received: from mail-lf1-f47.google.com ([209.85.167.47]:40710)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wandrewp@gmail.com>) id 1khuym-0005OD-Nv
 for usrp-users@lists.ettus.com; Wed, 25 Nov 2020 08:37:04 -0500
Received: by mail-lf1-f47.google.com with SMTP id u19so3146236lfr.7
 for <usrp-users@lists.ettus.com>; Wed, 25 Nov 2020 05:36:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=/OEf2tZDpqMPPTlx44SQ1YRmQNFridVotgMaDQiehb4=;
 b=kWRltWKrLHqqKmet2s9TcVEGV/uDm+86s0tLD5o1RD2dd+mRXj0PfEyqX15srZGIzD
 EM3X+PnQCnmdicX3CO4rP2HLDCMW1vTTT+1CsteRxczag0kN3/PCeJWN/RC9HD2FwF+0
 4jpRT9uThcBLao+eYbVWQXLoKG76KherIqMYrjcTrsKmwzWysdAuUvDjPN2FWnxbPLag
 pJcClp0UO8EYRJZ96Y6q+pPxBnMnm6YHuPP1nAaSPHDcy76EYTVOjk8SusyZ5DQcrLbW
 j0PQ8sVKj8JtWf6X8zHticE6UhJMcEg9DiBb93t7cZ9QZktwwf3gtUZntwzkqiOZ//bG
 sR1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=/OEf2tZDpqMPPTlx44SQ1YRmQNFridVotgMaDQiehb4=;
 b=aVWlX12b5qQPrJZu24SCJ0kOxXgbrsZS2BdBZid4cWRZQRhc8VhqJ5zQzmZFz0wz3T
 Qr4b6mZCOTuM3emnDEy+zKiL3Lxqps5ULnOLr2wOZrPOlaB/qY91vKGt4xKGVvKIkMEH
 AIqa3kKdWLTwQZu6fUkcwGV+yS1Wi1gluW3rsEc56EYd/KovWMEvXqVtfCzPECBCnjk/
 yMG2b+OsKocb1ThhfmnG1WvwMnO1E0JojYVb5b8HK6xPIPpyNEo6irtMaIzZeIyGkX0E
 Dbg6x5aMFtBj7b7VlhTtIUpuHMHeW2I3rV2QqkVnGkpXZS/61iTsJ/BL3OBHBc2lH7zp
 AkNA==
X-Gm-Message-State: AOAM530z33NhbVcihULQrqaxFu0xKxCXCm0SQ7kMWYMBtICdyjJSsxkI
 ldK3iaQKd1Vmcy+HWljj9FRQc9HLyBBrRj2AXvbMrRJX
X-Google-Smtp-Source: ABdhPJwCb3qlrW7AAdcZ+8cUEviVm7MlO6uPPwHEOc//rpOAvje/TUftuBnHc1loj470vRfbFc45wdmh9I3bgRYPEZM=
X-Received: by 2002:a19:8487:: with SMTP id g129mr1339876lfd.489.1606311382955; 
 Wed, 25 Nov 2020 05:36:22 -0800 (PST)
MIME-Version: 1.0
References: <CAB50+dRQJvM2+xh5ZK7D43Z_B_6aHVmZ9fGK+V8NjjTJK5Deag@mail.gmail.com>
 <996a7e51-1d29-c221-20bb-0c7513e8eb8f@balister.org>
 <CAB50+dS+HbL_DypVqs4uzmJ87f8afzpG7y46YFatLRgjdP2P0w@mail.gmail.com>
In-Reply-To: <CAB50+dS+HbL_DypVqs4uzmJ87f8afzpG7y46YFatLRgjdP2P0w@mail.gmail.com>
Date: Wed, 25 Nov 2020 08:36:13 -0500
Message-ID: <CAB50+dS5yhcRs5=9_4AVwZPcBr2JUiST0njmc49ofNae6xGJdg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Fwd:  E310: Change MAC Address?
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
From: Andrew Payne via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andrew Payne <wandrewp@gmail.com>
Content-Type: multipart/mixed; boundary="===============2799225680794868678=="
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

--===============2799225680794868678==
Content-Type: multipart/alternative; boundary="00000000000061392305b4ee8310"

--00000000000061392305b4ee8310
Content-Type: text/plain; charset="UTF-8"

---------- Forwarded message ---------
From: Andrew Payne <wandrewp@gmail.com>
Date: Wed, Nov 25, 2020 at 8:35 AM
Subject: Re: [USRP-users] E310: Change MAC Address?
To: Philip Balister <philip@balister.org>


It is: 00:80:2f:19:4c:37

When is that .patch file ran, is it during compilation of the BSP?  When
would I see that error message printf("I2C EEPROM MAC address read
failed\n");?

How could I experiment with compiling a new BSP with the UHD 3.15
environment loaded, so then I may insert my own MAC Address or get the i2c
EEPROM read to work? Do I need
https://github.com/EttusResearch/meta-ettus
and
https://github.com/Xilinx/u-boot-xlnx
and may be use this guide:
https://opencpi.github.io/bsp_e310/Ettus_E3xx_Getting_Started_Guide.pdf
?

Thanks,
Andrew


On Wed, Nov 25, 2020 at 8:26 AM Philip Balister <philip@balister.org> wrote:

> What is that mac address? I'd like to see if it matches mine.
>
> If I recall correctly, the mac address is flashed into the i2c eeprom,
> u-boot is supposed to read that and use it. Factory test should set it
> up uniquely. But my memories fade. Inspecting the u-boot source might
> show us ....
>
>
> https://github.com/EttusResearch/meta-ettus/blob/zeus/meta-e31x/recipes-bsp/u-boot/files/0001-ni-zynq-Add-support-for-NI-E31x-SG1-SG3-boards.patch#L397
>
> I didn't sift through the ifdef's though.
>
> Philip
>
> On 11/24/20 7:28 PM, Andrew Payne via USRP-users wrote:
> > Is there a way to change the mac address of my e310s?  I have imaged
> > several e310s using the image file in
> > https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/, and
> they
> > all have the same MAC address.
> >
> > On some searching around the web I can see that it is likely that the MAC
> > address parameter is specified as a U-boot parameter.  I'd like to know
> > what my options are for changing it.
> >
> > Thanks,
> > Andrew
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
>

--00000000000061392305b4ee8310
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">---------- Forwarded message ---------<br>From: <strong cla=
ss=3D"gmail_sendername" dir=3D"auto">Andrew Payne</strong> <span dir=3D"aut=
o">&lt;<a href=3D"mailto:wandrewp@gmail.com">wandrewp@gmail.com</a>&gt;</sp=
an><br>Date: Wed, Nov 25, 2020 at 8:35 AM<br>Subject: Re: [USRP-users] E310=
: Change MAC Address?<br>To: Philip Balister &lt;<a href=3D"mailto:philip@b=
alister.org">philip@balister.org</a>&gt;<br></div><br><br><div dir=3D"ltr">=
It is: 00:80:2f:19:4c:37<div><br></div><div>When is that .patch file ran, i=
s it during compilation of the BSP?=C2=A0 When would I see that error messa=
ge printf(&quot;I2C EEPROM MAC address read failed\n&quot;);?</div><div><sp=
an style=3D"background-color:rgb(240,255,244);color:rgb(34,134,58);font-fam=
ily:SFMono-Regular,Consolas,&quot;Liberation Mono&quot;,Menlo,monospace;fon=
t-size:12px;white-space:pre-wrap"><br></span></div><div>How could I experim=
ent with compiling a new BSP with the UHD 3.15 environment loaded, so then =
I may insert my own MAC Address or get the i2c EEPROM read to work? Do I ne=
ed</div><div><a href=3D"https://github.com/EttusResearch/meta-ettus" target=
=3D"_blank">https://github.com/EttusResearch/meta-ettus</a><br></div><div>a=
nd</div><div><a href=3D"https://github.com/Xilinx/u-boot-xlnx" target=3D"_b=
lank">https://github.com/Xilinx/u-boot-xlnx</a><br></div><div>and may be us=
e this guide:</div><div><a href=3D"https://opencpi.github.io/bsp_e310/Ettus=
_E3xx_Getting_Started_Guide.pdf" target=3D"_blank">https://opencpi.github.i=
o/bsp_e310/Ettus_E3xx_Getting_Started_Guide.pdf</a></div><div>?</div><div><=
br></div><div>Thanks,</div><div>Andrew</div><div><br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 25, =
2020 at 8:26 AM Philip Balister &lt;<a href=3D"mailto:philip@balister.org" =
target=3D"_blank">philip@balister.org</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">What is that mac address? I&#39;d like=
 to see if it matches mine.<br>
<br>
If I recall correctly, the mac address is flashed into the i2c eeprom,<br>
u-boot is supposed to read that and use it. Factory test should set it<br>
up uniquely. But my memories fade. Inspecting the u-boot source might<br>
show us ....<br>
<br>
<a href=3D"https://github.com/EttusResearch/meta-ettus/blob/zeus/meta-e31x/=
recipes-bsp/u-boot/files/0001-ni-zynq-Add-support-for-NI-E31x-SG1-SG3-board=
s.patch#L397" rel=3D"noreferrer" target=3D"_blank">https://github.com/Ettus=
Research/meta-ettus/blob/zeus/meta-e31x/recipes-bsp/u-boot/files/0001-ni-zy=
nq-Add-support-for-NI-E31x-SG1-SG3-boards.patch#L397</a><br>
<br>
I didn&#39;t sift through the ifdef&#39;s though.<br>
<br>
Philip<br>
<br>
On 11/24/20 7:28 PM, Andrew Payne via USRP-users wrote:<br>
&gt; Is there a way to change the mac address of my e310s?=C2=A0 I have ima=
ged<br>
&gt; several e310s using the image file in<br>
&gt; <a href=3D"https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.1=
5.0.0/" rel=3D"noreferrer" target=3D"_blank">https://files.ettus.com/binari=
es/cache/e3xx/meta-ettus-v3.15.0.0/</a>, and they<br>
&gt; all have the same MAC address.<br>
&gt; <br>
&gt; On some searching around the web I can see that it is likely that the =
MAC<br>
&gt; address parameter is specified as a U-boot parameter.=C2=A0 I&#39;d li=
ke to know<br>
&gt; what my options are for changing it.<br>
&gt; <br>
&gt; Thanks,<br>
&gt; Andrew<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; <br>
</blockquote></div>
</div></div>

--00000000000061392305b4ee8310--


--===============2799225680794868678==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2799225680794868678==--

