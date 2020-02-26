Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 17509170AFD
	for <lists+usrp-users@lfdr.de>; Wed, 26 Feb 2020 23:01:16 +0100 (CET)
Received: from [::1] (port=34400 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j74jt-000488-MI; Wed, 26 Feb 2020 17:01:09 -0500
Received: from mail-lf1-f46.google.com ([209.85.167.46]:45636)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <sam.reiter@ettus.com>)
 id 1j74jq-0003wR-8t
 for usrp-users@lists.ettus.com; Wed, 26 Feb 2020 17:01:06 -0500
Received: by mail-lf1-f46.google.com with SMTP id z5so452821lfd.12
 for <usrp-users@lists.ettus.com>; Wed, 26 Feb 2020 14:00:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=z7xLcfYopBZU3/+l83ewfNKUaBGPCqUIXzBdgtsZCZs=;
 b=Lgr1jc95VS2xOV+85M/pqOTfoJTB5e5Y7hx5o3HP+/yYbOd+xXHLhjxAZAs9quCGhG
 sk6Z66EeF6Vh80EseCGPaxrhi2Z7OyWir6arqhEJC0bM1c4+JmxyzySQSSY29hSm0Pxv
 WzCuDOj+xUwd+n3xKmieFCqTBA79l/rFjgJVkxLGpIXCslSCtikL2MfahTzf5K/govo/
 LsC9eBmC1YDcuf3ZEVPXqosjmjky0M/LD5Gk9iS2nJ4Dr8fIocYaSP9s1Ikf/yYeeTrg
 FvYvTCtrtgn+2tv5pdW+8TuT7D0MuszZ7Xk2qmxRh85yNHS0jjDj/z7OkiX95yMW7hJ2
 6D7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z7xLcfYopBZU3/+l83ewfNKUaBGPCqUIXzBdgtsZCZs=;
 b=IxnOKmx6ycQGkaahlXDT5/QvQMClUISyNP7P2Z4wY9hdim7F7oRlQhr/J3h3QVwLes
 53t2FjG8NcIW2bee8HGTl8LU/xtm8bSV1X6ylS1NGrHnXbkxiwJBXwvoCMFBGgJ9pN+2
 gQ2D3h8eE5XqVD30DM5ApAqXSbef9KHVkLfa9VcceaeZzK8hdlY0eTd2MRYzh9lF6LEp
 S2RSpzVWBAZBpSkK61CJD21G3ELbAjTyOYziUxE9sxaiUgPaRtvW7A/BGfBK2vnlCitU
 KayLOhyBHNVNtLOhKN1Z+F1HV2HsY4yvUU8J4f3hSJ1wGvREoQYk+yJCxL5XusolAWlG
 ZGhw==
X-Gm-Message-State: ANhLgQ0FyM5GJb3BEG/qK0JCWc9LgAR5FR9wEjy52wI1OnN5d9dYgcbk
 dcZQCvdJQkHkHsp+EP3Op6OSP8ZD9+jXkIPau2uvBeTF
X-Google-Smtp-Source: ADFU+vtlxfkzwHjyIs7qkkC6Lh3IVogeA39Q+owjJrrt1a5NPYi7rHwxasqg/OFLfdOLECx54IBn3grl48BA3gq1qHE=
X-Received: by 2002:ac2:4c84:: with SMTP id d4mr375455lfl.89.1582754424966;
 Wed, 26 Feb 2020 14:00:24 -0800 (PST)
MIME-Version: 1.0
References: <ba63240fb17d46748536af0129370e74@tudelft.nl>
In-Reply-To: <ba63240fb17d46748536af0129370e74@tudelft.nl>
Date: Wed, 26 Feb 2020 16:00:14 -0600
Message-ID: <CANf970Yv1mt7gaCrLtF9obkWFF5WotkkjcyHBy9CvqOKYUgz=w@mail.gmail.com>
To: Cherif Diouf <C.E.V.Diouf@tudelft.nl>
Subject: Re: [USRP-users] X310 SFP 10G-Ethernet Interface Kit
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2849239056614306105=="
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

--===============2849239056614306105==
Content-Type: multipart/alternative; boundary="00000000000044642f059f81bb7a"

--00000000000044642f059f81bb7a
Content-Type: text/plain; charset="UTF-8"

Cherif,

The recommended equivalent accessories for 10GbE can be found here:

https://www.ettus.com/all-products/10gige-kit/

https://www.ettus.com/all-products/10gige-1m/

Note that there are a number of other compatible cards and cables that can
be found outside of the ettus.com site as well, but the above hardware has
been tested for compatibility.

Sam

On Wed, Feb 26, 2020 at 8:11 AM Cherif Diouf via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi
>
>
>
> Ettus is proposing an X310 compatible SFP 1G Ethernet Interface Kit in
> this link:  https://www.ettus.com/all-products/1gige-kit/.
>
> Where a 10G compatible Interface Kit can be found? Otherwise are there
> some other alternatives to connect the X310 SFP interface to a common
> Ethernet interface.
>
>
>
> Best Regards
>
> Cherif
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000044642f059f81bb7a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Cherif,<div><br></div><div>The recommended equivalent acce=
ssories for 10GbE can be found here:</div><div><br></div><div><a href=3D"ht=
tps://www.ettus.com/all-products/10gige-kit/">https://www.ettus.com/all-pro=
ducts/10gige-kit/</a></div><div><br></div><div><a href=3D"https://www.ettus=
.com/all-products/10gige-1m/">https://www.ettus.com/all-products/10gige-1m/=
</a></div><div><br></div><div>Note that there are a number of other compati=
ble cards and cables that can be found outside of the <a href=3D"http://ett=
us.com">ettus.com</a> site as well, but the above hardware has been tested =
for compatibility.</div><div><br clear=3D"all"><div><div dir=3D"ltr" class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv><div dir=3D"ltr">Sam=C2=A0</div></div></div></div></div></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Fe=
b 26, 2020 at 8:11 AM Cherif Diouf via USRP-users &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"NL">
<div class=3D"gmail-m_7377110879031416071WordSection1">
<p class=3D"MsoNormal">Hi<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Ettus is proposing an X310 comp=
atible SFP 1G Ethernet Interface Kit in this link: =C2=A0<a href=3D"https:/=
/www.ettus.com/all-products/1gige-kit/" target=3D"_blank">https://www.ettus=
.com/all-products/1gige-kit/</a>.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Where a 10G compatible Interfac=
e Kit can be found? Otherwise are there some other alternatives to connect =
the X310 SFP interface to a common Ethernet interface.<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Best Regards<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Cherif<u></u><u></u></span></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000044642f059f81bb7a--


--===============2849239056614306105==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2849239056614306105==--

