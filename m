Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5A02C6BFB
	for <lists+usrp-users@lfdr.de>; Fri, 27 Nov 2020 20:32:48 +0100 (CET)
Received: from [::1] (port=35096 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kijU6-00070S-0s; Fri, 27 Nov 2020 14:32:46 -0500
Received: from mail-qk1-f174.google.com ([209.85.222.174]:44537)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kijU2-0006tT-Ul
 for usrp-users@lists.ettus.com; Fri, 27 Nov 2020 14:32:42 -0500
Received: by mail-qk1-f174.google.com with SMTP id y18so5237873qki.11
 for <usrp-users@lists.ettus.com>; Fri, 27 Nov 2020 11:32:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=gPE0m3di/sd0pRYZgsXLtZsKXmREbnfE9DHofWOOkCw=;
 b=jDbk5fNciXqKD3YrBJufXOuMWfwmGZTPlZRx9wUYh3OIQ8F49nuASgizixw7pjoutU
 nDD4+6L9v2kQh0hfPSfCzxbZI9WJbn9fagN0vBwwuOx7aA8d8h30zYW80pwQ/qo/5W9u
 fJEJFdbWZSEydx4jiW3yfZq/VTYtWj01Fx+iPknQpheQDwJOQF2jtiqPsUm1lR6hhN8o
 71O8q0tOsoQAGYGzCqHJQcTXTWnDvq0y55EcwF4XNtm3NAz4GS04hi3nVeCpnDjhF12K
 Jrs9WpFtXsSdiL0g4YCjCzAAg2GSCW0FtHA9Xibfn+I2WB67LPIKFTmfnwHDKGm9JqNt
 J5zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=gPE0m3di/sd0pRYZgsXLtZsKXmREbnfE9DHofWOOkCw=;
 b=iB6WttUK3h34DP/on8gPA7VW0/YefJd4xCLgSLfVLvrlTDkCQrjyFZfYedOi/cnKSF
 HJjzS/JWuIodwv+bfZY/MuOovpyzcda1eDU32mbJHu6ThjbTLrR4V119tUQSaP3c5+4K
 q+uEodi2CDh79ibicY7xTr8nNVweqLsWPP8xP7MZYu6HIG1GLGb8JPsPk4HTViL3jtH+
 IsIhFWtx8keKDq+nM4QFiweXY4FD44NcOvrTHhHr7vDMArzvik4EKzkC/PbZyMY3uY+X
 Fwm75oFzy+hZ24aNtNkpYw+u/0sdsBtXD7mKtrB8bv50WRauV2mBHdVAuuewibuQHD0K
 f3Gg==
X-Gm-Message-State: AOAM531bA00umTqSAd+6SVch6aqOe5c6m7rV8UOCyo6MuvIfUv4ocwWC
 bIBn1vuaXz1JbMIV8eXDApwGTu6f4ns=
X-Google-Smtp-Source: ABdhPJwYzclrK8mJT9llVDe8q37Dfmf9vmvNseYVwUDqHOkkvGEUPQevNJ5GEbb8hgCmrsPa7FQ3BQ==
X-Received: by 2002:a37:a1cc:: with SMTP id
 k195mr10290034qke.379.1606505522106; 
 Fri, 27 Nov 2020 11:32:02 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id k11sm563588qtu.86.2020.11.27.11.32.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 27 Nov 2020 11:32:01 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Fri, 27 Nov 2020 14:32:00 -0500
Message-Id: <BF12E650-BC2A-4BDC-A02F-048B9DDAA25E@gmail.com>
References: <CAB50+dRrvDhpqH3+jD+WRMx6=G8Dg91P4Z+xt7_39kVSakZ9UA@mail.gmail.com>
Cc: Philip Balister <philip@balister.org>,
 Andrew Payne via USRP-users <usrp-users@lists.ettus.com>
In-Reply-To: <CAB50+dRrvDhpqH3+jD+WRMx6=G8Dg91P4Z+xt7_39kVSakZ9UA@mail.gmail.com>
To: Andrew Payne <wandrewp@gmail.com>
X-Mailer: iPhone Mail (18B92)
Subject: Re: [USRP-users] Fwd: E310: Change MAC Address?
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============2316653623833738402=="
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


--===============2316653623833738402==
Content-Type: multipart/alternative; boundary=Apple-Mail-FD3AB26F-C075-4CE3-AE07-F6A02E0BB59F
Content-Transfer-Encoding: 7bit


--Apple-Mail-FD3AB26F-C075-4CE3-AE07-F6A02E0BB59F
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I have a query In to Ettus engineering on this. I can=E2=80=99t find any doc=
umentation on changing the MAC.=20

The u-boot environment thinks of the MAC address as precious and once it is s=
et, it won=E2=80=99t let you change it or delete it.=20

Presumably a fresh image from the download site has code that sets the u-boo=
t env from hardware, which then =E2=80=9Clocks=E2=80=9D it. U-boot used to u=
se text files for the environment but now it=E2=80=99s in a binary format AFA=
iR.=20

Sent from my iPhone

> On Nov 27, 2020, at 2:21 PM, Andrew Payne via USRP-users <usrp-users@lists=
.ettus.com> wrote:
>=20
> =EF=BB=BF
> Thanks Aneesh but the decompiled dts file has no mention of the exact MAC a=
ddress for eth0, but just to read from the eeprom from what I can gather. Pl=
us an md5sum of the dtb file on the sdimg from Ettus is the same checksum as=
 an e310 that has booted.
>=20
>> On Fri, Nov 27, 2020 at 1:40 PM Philip Balister <philip@balister.org> wro=
te:
>> On 11/27/20 1:34 PM, aneesh patel via USRP-users wrote:
>> > Hi Andrew,
>> > The MAC may be in the devicetree blobs in the boot area of the SD image=
.
>> > You will need dtcedit to decompile, edit, and recompile as needed.
>>=20
>> I don't think so, since the first time the card boots it does read from
>> the i2c eeprom.
>>=20
>> I'm guessing u-boot sets the ethaddr env var and saves it in the
>> environment, but I forget where that might be saved. Need to review the
>> u-boot configuration for setting about the u-boot env (maybe getting
>> saved to the sd card).
>>=20
>> Anyone from Ettus paying attention? This is a pretty serious problem for
>> people copying cards and using them in different units. The correct
>> behavior is follow the MAC address programmed into the i2c eeprom.
>>=20
>> Philip
>>=20
>> > Amp
>> >=20
>> > Sent from Yahoo Mail on Android=20
>> > =20
>> >   On Fri, Nov 27, 2020 at 1:23 PM, Andrew Payne via USRP-users<usrp-use=
rs@lists.ettus.com> wrote:   _______________________________________________=

>> > USRP-users mailing list
>> > USRP-users@lists.ettus.com
>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> >  =20
>> >=20
>> >=20
>> > _______________________________________________
>> > USRP-users mailing list
>> > USRP-users@lists.ettus.com
>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> >=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-FD3AB26F-C075-4CE3-AE07-F6A02E0BB59F
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I have a query In to Ettus engineering on t=
his. I can=E2=80=99t find any documentation on changing the MAC.&nbsp;<div><=
br></div><div>The u-boot environment thinks of the MAC address as precious a=
nd once it is set, it won=E2=80=99t let you change it or delete it.&nbsp;</d=
iv><div><br></div><div>Presumably a fresh image from the download site has c=
ode that sets the u-boot env from hardware, which then =E2=80=9Clocks=E2=80=9D=
 it. U-boot used to use text files for the environment but now it=E2=80=99s i=
n a binary format AFAiR.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</=
div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Nov 27, 2020, at 2:21 P=
M, Andrew Payne via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br>=
<br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<=
div dir=3D"ltr">Thanks Aneesh but the decompiled dts file has no mention&nbs=
p;of the exact MAC address for eth0, but just to read from the eeprom from w=
hat I can gather. Plus an md5sum of the dtb file on the sdimg from Ettus is t=
he same checksum as an e310 that has booted.</div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 27, 2020 at 1:40 PM P=
hilip Balister &lt;<a href=3D"mailto:philip@balister.org">philip@balister.or=
g</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">O=
n 11/27/20 1:34 PM, aneesh patel via USRP-users wrote:<br>
&gt; Hi Andrew,<br>
&gt; The MAC may be in the devicetree blobs in the boot area of the SD image=
.<br>
&gt; You will need dtcedit to decompile, edit, and recompile as needed.<br>
<br>
I don't think so, since the first time the card boots it does read from<br>
the i2c eeprom.<br>
<br>
I'm guessing u-boot sets the ethaddr env var and saves it in the<br>
environment, but I forget where that might be saved. Need to review the<br>
u-boot configuration for setting about the u-boot env (maybe getting<br>
saved to the sd card).<br>
<br>
Anyone from Ettus paying attention? This is a pretty serious problem for<br>=

people copying cards and using them in different units. The correct<br>
behavior is follow the MAC address programmed into the i2c eeprom.<br>
<br>
Philip<br>
<br>
&gt; Amp<br>
&gt; <br>
&gt; Sent from Yahoo Mail on Android <br>
&gt;&nbsp; <br>
&gt;&nbsp; &nbsp;On Fri, Nov 27, 2020 at 1:23 PM, Andrew Payne via USRP-user=
s&lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a>&gt; wrote:&nbsp; &nbsp;_____________________________=
__________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-us=
ers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ett=
us.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/=
listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&nbsp; &nbsp;<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-us=
ers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ett=
us.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/=
listinfo/usrp-users_lists.ettus.com</a><br>
&gt; <br>
</blockquote></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></body></html>=

--Apple-Mail-FD3AB26F-C075-4CE3-AE07-F6A02E0BB59F--


--===============2316653623833738402==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2316653623833738402==--

