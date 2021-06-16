Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 704813AA294
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jun 2021 19:41:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BA18A384E25
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jun 2021 13:41:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FgtEIS9b";
	dkim-atps=neutral
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 83AB1384285
	for <usrp-users@lists.ettus.com>; Wed, 16 Jun 2021 13:40:37 -0400 (EDT)
Received: by mail-qv1-f49.google.com with SMTP id l3so164987qvl.0
        for <usrp-users@lists.ettus.com>; Wed, 16 Jun 2021 10:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=R6kpdr8ATQ1u6sLWvx3J//WaYDQGZShqPTcNvoMZSN4=;
        b=FgtEIS9b4CAG7mCKknGpzS6FgPxnlwvK+y1OoQV3DeJDXXGuxF0pMXIqXFLfdQXSjS
         oFRqzs+FYkccPe9SjQpTl/E6t6rq94SuiJ6n30SI5FVbyrXCdPM8XCQQJbz3dAc68Hze
         8vTnVQRHt1d225CfWtQrMVdHPAn8F10STqlejanRCgW7OkR3ayK5rdXq8inV7qdLP4gO
         R26QofUluYpoNBpHqJ9PU97+bCv6Rk0mzT7rijIVCzG4GPyy3TRXibogyUTLvrHCAz/6
         A+uCjb6o4lRNkBu2qS5omLZE5mcGZKQDumZQIYnDBYeEbXKkF+VM/qN7cjLAHXLQomYp
         HQsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=R6kpdr8ATQ1u6sLWvx3J//WaYDQGZShqPTcNvoMZSN4=;
        b=s7ZQ/KK2AMf+fHiCj9IMXf5tow9P05oz8M7CoKS36VmUjDIFu5PAPfDJzM0RASNvIs
         qLco9lufstfoznJfZBe2BHI0Xu/fNxaezwLXvQtYBPflsbKti2GwDBtc2jTw0DnlLiTt
         paGcJsazmWYV/Et/i3VgU5+MzO0Gfskf/NdlC7hoECVV1TMm9TU+JSEEZ4eyiOHTtvWN
         5ssmenoJeMGBim/hp1UhmxJIMa69BYMjYpsV9cUtMeEXFJS1KCWnq3AdLg8qdd2cdlWw
         n6OHmfBM1pshbdN21F6MzVEn9hr13+NShRDdcF+Cr8PMKZdM6+vaBjw0HijhvnE9WHtM
         ipHw==
X-Gm-Message-State: AOAM532Cjfs9HWRbY0VyALAPH8gG12g3GZORIPzPQwdx1tXM6UdgVHfV
	Zwfj/t7H2W5vQkPbSN5W5ADiPHU+Ld2I+w==
X-Google-Smtp-Source: ABdhPJx0/kzB/wXCou6e7/DxXq9ve5+if3uYZ1zI2eKVqNehHvvP4yBobarji/MYaSg0l0tfDPt/Bw==
X-Received: by 2002:a05:6214:1869:: with SMTP id eh9mr1239051qvb.16.1623865236782;
        Wed, 16 Jun 2021 10:40:36 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id x5sm342938qke.92.2021.06.16.10.40.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jun 2021 10:40:36 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 16 Jun 2021 13:40:35 -0400
Message-Id: <0B6AD8EE-27BB-4DC7-A40A-1C7EDCB3EAF5@gmail.com>
References: <CAGLr63sjiDtx3SpTzAP7vo1zQLaOOd8J9uLXgO9rbRcCXiY6hw@mail.gmail.com>
In-Reply-To: <CAGLr63sjiDtx3SpTzAP7vo1zQLaOOd8J9uLXgO9rbRcCXiY6hw@mail.gmail.com>
To: Cameron Matson <ncmatson95@gmail.com>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: 3QHFA7KTYOTQ7K7QP6DB6ZHQ62W5XEMZ
X-Message-ID-Hash: 3QHFA7KTYOTQ7K7QP6DB6ZHQ62W5XEMZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: ettus e312 file system images and gnuradio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3QHFA7KTYOTQ7K7QP6DB6ZHQ62W5XEMZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6735982711312855942=="


--===============6735982711312855942==
Content-Type: multipart/alternative; boundary=Apple-Mail-CA79571F-057F-4704-A33E-925E9977B982
Content-Transfer-Encoding: 7bit


--Apple-Mail-CA79571F-057F-4704-A33E-925E9977B982
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I think that most people who have done =E2=80=9Creal work=E2=80=9D on the E3=
10/312 do so with just the UHD library and their own custom FPGA code and/or=
 RFNOC. The ARM cpus on the E310 along with limited memory
Make running any kind of serious GNU Radio flow (at >1Msps rates) not terrib=
ly practical. Now YMMV, etc.=20

Sent from my iPhone

> On Jun 16, 2021, at 1:33 PM, Cameron Matson <ncmatson95@gmail.com> wrote:
>=20
> =EF=BB=BF
> Hello all,
>=20
> I'd like to run gnuradio flowgraphs on an e312 in embedded mode.  My under=
standing is that to do this the gnuradio and uhd versions that I build the f=
lowgraph with on my host machine must match that of the embedded environment=
 on the e312.
>=20
> I'd like to use gnuradio 3.8 and uhd 3.15.  I've installed gnuradio and uh=
d (in this case on mac via macports), but when I use the uhd_images_download=
er tool the .sdimg image I get has gnuradio 3.7.  I'd like to avoid building=
 a custom file system.  Is there an already built image that meets my needs o=
r am I out of luck?
>=20
> Also I noticed the uhd docs say:
> "7. E310 filesystem no longer contains GNURadio by default. Custom filesys=
tems are need to run GNURadio."
>=20
> I'm a little confused what that exactly means as I have recent images with=
 gnuradio installed.  Does this mean literally the e310 (as opposed to e312)=
 or is this what I'm running into in the sense that there's only the much ol=
der gnuradio 3.7?
>=20
> In general what is the intended workflow for using the e312 in embedded mo=
de if not via gnuradio flowgraphs?
>=20
> Thanks for your help,
>=20
> Cameron
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-CA79571F-057F-4704-A33E-925E9977B982
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I think that most people who have done =E2=80=
=9Creal work=E2=80=9D on the E310/312 do so with just the UHD library and th=
eir own custom FPGA code and/or RFNOC. The ARM cpus on the E310 along with l=
imited memory<div>Make running any kind of serious GNU Radio flow (at &gt;1M=
sps rates) not terribly practical. Now YMMV, etc.&nbsp;<br><div><div><br><di=
v dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=
=3D"cite">On Jun 16, 2021, at 1:33 PM, Cameron Matson &lt;ncmatson95@gmail.c=
om&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D=
"ltr">=EF=BB=BF<div dir=3D"ltr"><div dir=3D"ltr">Hello all,</div><div dir=3D=
"ltr"><br></div><div dir=3D"ltr">I'd like to run gnuradio flowgraphs on an e=
312 in embedded mode.&nbsp; My understanding is that to do this the gnuradio=
 and uhd versions that I build the flowgraph with on my host machine must ma=
tch that of the embedded environment&nbsp;on the e312.<div><br></div><div>I'=
d like to use gnuradio 3.8 and uhd 3.15.&nbsp; I've installed gnuradio and u=
hd (in this case on mac via macports), but when I use the uhd_images_downloa=
der tool the .sdimg image I get has gnuradio 3.7.&nbsp; I'd like to avoid bu=
ilding a custom file system.&nbsp; Is there an already built image that meet=
s my needs or am I out of luck?</div><div><br></div><div>Also I noticed the u=
hd docs say:</div><blockquote style=3D"margin:0px 0px 0px 40px;border:none;p=
adding:0px"><div>"7. E310<span style=3D"color:rgb(0,0,0);font-family:Roboto,=
sans-serif;font-size:14px"> filesystem no longer contains GNURadio by defaul=
t. Custom filesystems are </span>need<span style=3D"color:rgb(0,0,0);font-fa=
mily:Roboto,sans-serif;font-size:14px"> to run GNURadio."</span></div></bloc=
kquote></div><div dir=3D"ltr"><div><br></div><div>I'm a little confused what=
 that exactly means as I have recent images with gnuradio installed.&nbsp; D=
oes this mean literally the e310 (as opposed to e312) or is this what I'm ru=
nning into in the sense that there's only the much older gnuradio 3.7?</div>=
<div><br></div><div>In general what is the intended workflow for using the e=
312 in embedded mode if not via gnuradio flowgraphs?</div><div><br></div><di=
v>Thanks for your help,</div><div><br></div><div>Cameron</div></div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></div></div></body></html>=

--Apple-Mail-CA79571F-057F-4704-A33E-925E9977B982--

--===============6735982711312855942==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6735982711312855942==--
