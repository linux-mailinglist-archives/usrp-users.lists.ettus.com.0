Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA0229BD69
	for <lists+usrp-users@lfdr.de>; Tue, 27 Oct 2020 17:49:42 +0100 (CET)
Received: from [::1] (port=53674 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kXSAH-00015C-HK; Tue, 27 Oct 2020 12:49:41 -0400
Received: from mail-qt1-f172.google.com ([209.85.160.172]:37618)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kXSAD-0000xy-P9
 for USRP-users@lists.ettus.com; Tue, 27 Oct 2020 12:49:37 -0400
Received: by mail-qt1-f172.google.com with SMTP id h19so1478920qtq.4
 for <USRP-users@lists.ettus.com>; Tue, 27 Oct 2020 09:49:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=fRQqZgDwl7hI8/8JepDk/KKI7AYUGHsPpB8pULfXe9g=;
 b=U4wSdkNMT4PpYxrHn9h8pQLOPWiPcOVoCvTWlvEUhTdEuzNtay0sScFF720EG31uUX
 H5bHvUDilKisVwuetlUzskqFepohgE64/eZ2emFw3kcOe51i8dxOZY/8sw28dAXN08Hy
 1jIHKJkooymzi1VKNN4Cn6lPYg9YBSojHfZo/V97TlVbzGSHoQG2liArDnXWVkDP+ByK
 jPcdIcUlE70BbblCMPBtXaNWLLhdnLfPZ/UBUG6hNAc5W1NxYVVeiFacT6niQeMlXQmu
 SPViN9a6lkgUbEyyABDcoAvHIiuiZ2Acy6e5swGtTxoxTW3lh1xXqpB22uyhH50pxLAR
 GdNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=fRQqZgDwl7hI8/8JepDk/KKI7AYUGHsPpB8pULfXe9g=;
 b=EUM2OAxVhUciBEgJGnG28lI7CtIRBWh7bNePVlAuWD5PFZcrlJIRZHQbGVt9/U6a8i
 MIAMCv2yKIHehfe75+Fo6HuixjErmpaKt0Z7rKEgkHQg+EvYA3/uoO5xVz9uh63wdrbE
 +zAYMbhpvqBTJx/gKtY3Qu4McyStgdlilYIrif8e0Zf45bodgxWNcsdmHnsyAyUPqqfZ
 6gt416wyK37GAL5PM4eQ9NjfrWwhNW3P02TS4Lu6LWS1ro3ZV7AH5BOYOfzX228VrkUR
 1OUVBjgV5htRShknv6nN2+ekVJ7PEXITx0cHqx/B6XZukGWM7EqyI994rfkCJzxieIvj
 3Duw==
X-Gm-Message-State: AOAM532A5oKqlhB6l/YJJMyPEI9oIkm/bwdqDx7l5EOZ/oF2nDyft9VW
 WeqHWQrtfNbKMdf+mmgH8d8=
X-Google-Smtp-Source: ABdhPJy5z1oi+6PkA4yOpLXwHSF3+XqgdUuqCq6kiEJJ5rOOxv+ByH7rPY7l1T39xCSDxF3MIRHA3Q==
X-Received: by 2002:ac8:60ca:: with SMTP id i10mr3024444qtm.206.1603817337163; 
 Tue, 27 Oct 2020 09:48:57 -0700 (PDT)
Received: from [192.168.2.29]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id t184sm989144qka.19.2020.10.27.09.48.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 27 Oct 2020 09:48:56 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Tue, 27 Oct 2020 12:48:54 -0400
Message-Id: <77AD9DDC-6ED5-41F6-98CE-0DA956728821@gmail.com>
References: <0b218fc462bf455fa059abfbbae584c7@gtri.gatech.edu>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
In-Reply-To: <0b218fc462bf455fa059abfbbae584c7@gtri.gatech.edu>
To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
X-Mailer: iPhone Mail (17H35)
Subject: Re: [USRP-users] C++ how to get usrp::multi_usrp::sptr from
 USRP_Sink_Block
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
Content-Type: multipart/mixed; boundary="===============3322033967346549910=="
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


--===============3322033967346549910==
Content-Type: multipart/alternative; boundary=Apple-Mail-9B975160-8061-4966-9E51-BE1E6113CF97
Content-Transfer-Encoding: 7bit


--Apple-Mail-9B975160-8061-4966-9E51-BE1E6113CF97
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Are you sure the calls you need aren=E2=80=99t already available in the gr-U=
HD wrapper?

Some parts of gr-UHD aren=E2=80=99t visible in GRC based flows but are still=
 in the gr-UHD API, and if you were just using the straight Python programmi=
ng model you could use them directly.=20


Sent from my iPhone

> On Oct 27, 2020, at 12:25 PM, Hodges, Jeff via USRP-users <usrp-users@list=
s.ettus.com> wrote:
>=20
> =EF=BB=BF
> How do I get the device sptr (::uhd::usrp::multi_usrp::sptr) from the usrp=
_sink_block sptr? =20
>=20
>=20
>=20
> For example, the following works:
>=20
>                =20
>                 basic_block_sptr blk =3D global_block_registry.block_looku=
p(pmt::intern(usrp_alias));
>                 d_usrp =3D boost::dynamic_pointer_cast<gr::uhd::usrp_sink:=
:sptr>(blk);
>=20
> But errors here:
>=20
>                 ::uhd::usrp::multi_usrp::sptr d_usrp_dev =3D d_usrp->get_d=
evice();
>=20
> What happens if I just create another usrp object for the same device in a=
ddition to the one already created by the uhd_sink_block? I'm guessing that w=
ill not work.
>=20
>=20
>=20
> My end goal is to be able to create a block that makes direct C++ api call=
s to the usrp to tune it between bursts, since the uhd (for unknown reasons)=
 does not support timed command tuning on a tagged stream in burst mode (as i=
 mentioned in yesterday's email).
>=20
> Jeff
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-9B975160-8061-4966-9E51-BE1E6113CF97
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Are you sure the calls you need aren=E2=80=99=
t already available in the gr-UHD wrapper?<div><br></div><div>Some parts of g=
r-UHD aren=E2=80=99t visible in GRC based flows but are still in the gr-UHD A=
PI, and if you were just using the straight Python programming model you cou=
ld use them directly.&nbsp;</div><div><br><br><div dir=3D"ltr">Sent from my i=
Phone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Oct 27, 2020, a=
t 12:25 PM, Hodges, Jeff via USRP-users &lt;usrp-users@lists.ettus.com&gt; w=
rote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=
=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-1=
">



<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color:=
rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif,&quot;EmojiFont&quot;,&=
quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot=
;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<p>How do I get the device sptr (::uhd::usrp::multi_usrp::sptr) from the usr=
p_sink_block sptr?&nbsp;
<br>
</p>
<p><br>
</p>
<p>For example, the following works:</p>
<p></p>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; <br>
</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; basic_block_sptr blk =3D global_block_registry.block_loo=
kup(pmt::intern(usrp_alias));<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; d_usrp =3D boost::dynamic_pointer_cast&lt;gr::uhd::usrp_sink:=
:sptr&gt;(blk);</div>
<div><br>
</div>
<div>But errors here:<br>
</div>
<div><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; ::uhd::usrp::multi_usrp::sptr d_usrp_dev =3D d_usrp-&gt;get_d=
evice();<br>
<br>
</div>
<p>What happens if I just create another usrp object for the same device in a=
ddition to the one already created by the uhd_sink_block? I'm guessing that w=
ill not work.</p>
<p><br>
</p>
<p>My end goal is to be able to create a block that makes direct C++ api cal=
ls to the usrp to tune it between bursts, since the uhd (for unknown reasons=
) does not support timed command tuning on a tagged stream in burst mode (as=
 i mentioned in yesterday's email).<br>
<br>
Jeff<br>
</p>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></body></html>=

--Apple-Mail-9B975160-8061-4966-9E51-BE1E6113CF97--


--===============3322033967346549910==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3322033967346549910==--

