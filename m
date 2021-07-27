Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2A63D7515
	for <lists+usrp-users@lfdr.de>; Tue, 27 Jul 2021 14:32:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4D295384142
	for <lists+usrp-users@lfdr.de>; Tue, 27 Jul 2021 08:32:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OOXXfCJJ";
	dkim-atps=neutral
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 24D3B383AEB
	for <usrp-users@lists.ettus.com>; Tue, 27 Jul 2021 08:31:38 -0400 (EDT)
Received: by mail-qt1-f181.google.com with SMTP id l24so9368772qtj.4
        for <usrp-users@lists.ettus.com>; Tue, 27 Jul 2021 05:31:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=wYiwEUdIhZ/7eG+4Big7yH9A72vGNtdldVh7uoCzVR0=;
        b=OOXXfCJJKaWeoZjUgIIk4V1p/dN+wd6WGynwcgvuruf0gVK2ddoIjCXypeI/nQ0/Em
         QscIb5epwtmbNzIl9WW7C+jHyC+bF8PFjMM25DFSBBTW1wn+9kYBPru2Y6xkhsWb+cJZ
         fYiR1kKl8ioZvgDuNbUAehSgw8wf81i9G3Kbp5CvAXUj7DWWlKRjEy9XkP4aqTwN9RtS
         mfQWDzgzjCvdRAhhD39XODMLntJD/OKCCG6scwJSTQG9yjGWXk1ObrYJ1zx2fZ2+x0UO
         0VOnkEmY4TXVC0zVbmQuMFqndwXV5iQOZVwRLSinGCIHbZ81yPQi0KAUB2/DyQGQW4u+
         zHyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=wYiwEUdIhZ/7eG+4Big7yH9A72vGNtdldVh7uoCzVR0=;
        b=WvDUwgwmjuXYaDzT7s/eJucJ1qQE1qEGdGDruR4t8vLrQnAI0nddTOw22CD9bIrVRf
         PaSj9NZDH+BJBaeyMnCrrtqWUGgyfS1dS0+aQMJOex/nR5ft/N7/sqIhxYfjneyZ+JoA
         TKZ2S//PexQ1uJ0g3ynLV5jelhwa59kqTG5f6omS8DnOn1yOoZWB+wyFKK98PPyTuRpm
         KIUBpuumg+nrOeS4UO9AuwGAXAaqONndZJYru2ME8c6ILbkHysHY+/86HBxZr+k4xMBZ
         p8Nv04qiECvrvITsgOTwO6DlXfY2b72mK2dGR9b1wbfsGFIoXe/rGB3cqsxlk6ZLCgkD
         c5RA==
X-Gm-Message-State: AOAM532O1z+SJVwxDLBywtqmOmJhpDMSsuIBluXP1sUFOqEIUcgTmnAC
	zBh/isnDfIz31E31LNJxW2DERSEQ6gg=
X-Google-Smtp-Source: ABdhPJwvlfvzR8ZSAx/l1+0SOLwqYUOkwS5mUHSNjxVhfywlxHyIDhzNcXKoDrW67KdW6KS+N0qRhg==
X-Received: by 2002:ac8:6614:: with SMTP id c20mr19258082qtp.313.1627389097361;
        Tue, 27 Jul 2021 05:31:37 -0700 (PDT)
Received: from smtpclient.apple ([2600:380:186f:d8e1:8af:e593:e3d8:7ff7])
        by smtp.gmail.com with ESMTPSA id u6sm1759717qkp.49.2021.07.27.05.31.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 05:31:36 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 27 Jul 2021 08:31:35 -0400
Message-Id: <02485732-C5E9-4735-8A46-1DB9C6A3CBEC@gmail.com>
References: <d5LUCmqe0G6EE2GePmSMi2mrDThZewZBsJCSmoOFo@lists.ettus.com>
In-Reply-To: <d5LUCmqe0G6EE2GePmSMi2mrDThZewZBsJCSmoOFo@lists.ettus.com>
To: thebouleoffools@gmail.com
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: DKHCLSAVMJPEOVI5B2HQPREVIWMKQ4M7
X-Message-ID-Hash: DKHCLSAVMJPEOVI5B2HQPREVIWMKQ4M7
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: available RFNoc blocks for UHD 4.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DKHCLSAVMJPEOVI5B2HQPREVIWMKQ4M7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4706800961538488151=="


--===============4706800961538488151==
Content-Type: multipart/alternative; boundary=Apple-Mail-24E98307-5AAA-419D-A1A3-2F1215AE6D81
Content-Transfer-Encoding: 7bit


--Apple-Mail-24E98307-5AAA-419D-A1A3-2F1215AE6D81
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I=E2=80=99m doing more or less the same thing you are and trying to figure o=
ut a standard way to port the existing blocks over. Rfnocmodtool is working b=
ut I=E2=80=99m still not there with a straightforward process. I spent the b=
etter part of the week last week trying to build up a siggen block and there=
 are several things that don=E2=80=99t get picked up in the build process th=
ey have more to do with swig than anything else. As you=E2=80=99ve seen, the=
y don=E2=80=99t get picked up until you try to import and call specific bloc=
ks in the module via the new radio. I=E2=80=99ll mention that you can also t=
est some of this out via the python interpreter and see if your block is imp=
orted properly and has functions you can call:
import mymodule
dir(mymodule)
dir(mymodule.myblock)

I have also had the =E2=80=9Ccannot find block=E2=80=9D issue, which means t=
hat you successfully built the gnuradio block, but the block that you built c=
an=E2=80=99t find splitstream block on the FPGA. You said that uhd_usrp_prob=
e shows that splitstream IS in fact in the image that you built, so my guess=
 is that in the _impl file you didn=E2=80=99t pass the correct proper name s=
tring for the block.=20

I=E2=80=99m doing this from memory but I=E2=80=99m pretty sure it=E2=80=99s i=
n the make section in the impl.cc, regardless the proper name of the block i=
s the name shown in uhd_usrp_probe under blocks. I think splitstream is =E2=80=
=9CSplitStream=E2=80=9D if it=E2=80=99s not case and spelling correct, your G=
NURadio block will be trying as hard as it can to find a block that doesn=E2=
=80=99t exist. Hoping that=E2=80=99s where your error is, otherwise it=E2=80=
=99s into deeper (swig) debugging.=20

Good luck

<end transmission>

> On Jul 26, 2021, at 22:52, thebouleoffools@gmail.com wrote:
>=20
> =EF=BB=BF
> Just to pile on to this, I=E2=80=99ve attempted to make a grc block for sp=
lit stream. I=E2=80=99ve copied the structure of DDC and everything appears t=
o compile and cross compile just fine for my e320. I used image builder to p=
ut a split stream block on my fpga and verified its existence with the probe=
 command. However, when I run my application I get the very detailed error m=
essage:
>=20
>=20
>=20
> File "/data/localinstall/usr/lib/python3.7/site-packages/ettus/ettus_swig.=
py", line 2034, in make
>=20
> return _ettus_swig.rfnoc_split_stream_make(graph, block_args, device_selec=
t, instance)
>=20
> RuntimeError: Cannot find block!
>=20
>=20
>=20
> which returns 0 Google results. I=E2=80=99m assuming I=E2=80=99ve missed s=
ome configuration setting or didn=E2=80=99t compile some file. Is there a gu=
ide somewhere that describes everything that must be included to get these b=
locks imported into gnuradio?
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-24E98307-5AAA-419D-A1A3-2F1215AE6D81
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I=E2=80=99m doing more or less the same thi=
ng you are and trying to figure out a standard way to port the existing bloc=
ks over. Rfnocmodtool is working but I=E2=80=99m still not there with a stra=
ightforward process. I spent the better part of the week last week trying to=
 build up a siggen block and there are several things that don=E2=80=99t get=
 picked up in the build process they have more to do with swig than anything=
 else. As you=E2=80=99ve seen, they don=E2=80=99t get picked up until you tr=
y to import and call specific blocks in the module via the new radio. I=E2=80=
=99ll mention that you can also test some of this out via the python interpr=
eter and see if your block is imported properly and has functions you can ca=
ll:<div>import mymodule</div><div>dir(mymodule)</div><div>dir(mymodule.myblo=
ck)<br><div><br></div><div>I have also had the =E2=80=9Ccannot find block=E2=
=80=9D issue, which means that you successfully built the gnuradio block, bu=
t the block that you built can=E2=80=99t find splitstream block on the FPGA.=
 You said that uhd_usrp_probe shows that splitstream IS in fact in the image=
 that you built, so my guess is that in the _impl file you didn=E2=80=99t pa=
ss the correct proper name string for the block.&nbsp;</div><div><br></div><=
div>I=E2=80=99m doing this from memory but I=E2=80=99m pretty sure it=E2=80=99=
s in the make section in the impl.cc, regardless the proper name of the bloc=
k is the name shown in uhd_usrp_probe under blocks. I think splitstream is =E2=
=80=9CSplitStream=E2=80=9D if it=E2=80=99s not case and spelling correct, yo=
ur GNURadio block will be trying as hard as it can to find a block that does=
n=E2=80=99t exist. Hoping that=E2=80=99s where your error is, otherwise it=E2=
=80=99s into deeper (swig) debugging.&nbsp;</div><div><br></div><div>Good lu=
ck<br><div><div><div><div><div><div><div><div><div><div><div><div><div><div>=
<div><div><div><div><div><div><div><div><div><div><div><div><div><div><div><=
div><div><div><div><div><div><div><div><div><div><div><div><div><div><div><d=
iv><div><div><div><div><div><div><div><div><div><div><div><div><div><div><di=
v><div><br><div dir=3D"ltr">&lt;<span class=3D"Apple-style-span" style=3D"-w=
ebkit-tap-highlight-color: rgba(26, 26, 26, 0.296875); -webkit-composition-f=
ill-color: rgba(175, 192, 227, 0.230469); -webkit-composition-frame-color: r=
gba(77, 128, 180, 0.230469); ">end transmission&gt;</span></div><div dir=3D"=
ltr"><br><blockquote type=3D"cite">On Jul 26, 2021, at 22:52, thebouleoffool=
s@gmail.com wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div d=
ir=3D"ltr">=EF=BB=BF<p>Just to pile on to this, I=E2=80=99ve attempted to ma=
ke a grc block for split stream. I=E2=80=99ve copied the structure of DDC an=
d everything appears to compile and cross compile just fine for my e320. I u=
sed image builder to put a split stream block on my fpga and verified its ex=
istence with the probe command. However, when I run my application I get the=
 very detailed error message:</p><p><br></p><p>File "/data/localinstall/usr/=
lib/python3.7/site-packages/ettus/ettus_swig.py", line 2034, in make</p><p> =
   return _ettus_swig.rfnoc_split_stream_make(graph, block_args, device_sele=
ct, instance)</p><p>RuntimeError: Cannot find block!</p><p><br></p><p>which r=
eturns 0 Google results. I=E2=80=99m assuming I=E2=80=99ve missed some confi=
guration setting or didn=E2=80=99t compile some file. Is there a guide somew=
here that describes everything that must be included to get these blocks imp=
orted into gnuradio?</p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></div></div></div></div></div></div></div></div></div></div></di=
v></div></div></div></div></div></div></div></div></div></div></div></div></=
div></div></div></div></div></div></div></div></div></div></div></div></div>=
</div></div></div></div></div></div></div></div></div></div></div></div></di=
v></div></div></div></div></div></div></div></div></div></div></div></div></=
div></body></html>=

--Apple-Mail-24E98307-5AAA-419D-A1A3-2F1215AE6D81--

--===============4706800961538488151==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4706800961538488151==--
