Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D15D93248AB
	for <lists+usrp-users@lfdr.de>; Thu, 25 Feb 2021 02:55:04 +0100 (CET)
Received: from [::1] (port=56774 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lF5ro-0004Mo-Nm; Wed, 24 Feb 2021 20:55:00 -0500
Received: from mail-oi1-f177.google.com ([209.85.167.177]:36528)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1lF5rk-0004Ic-Pv
 for usrp-users@lists.ettus.com; Wed, 24 Feb 2021 20:54:56 -0500
Received: by mail-oi1-f177.google.com with SMTP id j1so4597389oiw.3
 for <usrp-users@lists.ettus.com>; Wed, 24 Feb 2021 17:54:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=GWJhaW6G3L8ffosa3JDZHsDfJn/2euxu7nean/mcHsg=;
 b=H4/FXgx8s+Sg6QlxtauuOrK7FRqEy+vcTlV00i5LNWK5yUdYCKnInwuC8A6rZx0U4P
 Tti/tZdFl7bK1yEScaBJEOso9d2nHkf6w2AXqq9hv5aeb6tFhsh5c/wNNbL9tfswM6+Q
 HdKFchonjulxWt30AAIt/6+M0pHmJs4E/EEe1Qw72Zli4woRvvxXE0hqDE68i61IBrAS
 sZ4wF+ysMxuHwXk7T/PCF+i67oQbegDhigQm4R9akkPagsEM+pCm62CLQoHiP80l0fkj
 WmIHjv2nB4h2JLPjqCnT6hnr9IJrGw9NXDK//jB5XTWe8SGb8FMPXwj+etvERX4w5368
 nbHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=GWJhaW6G3L8ffosa3JDZHsDfJn/2euxu7nean/mcHsg=;
 b=HlLigDpJg+ihcuDPOu+GMwcfcTI8tHbCSjl+PPH77/zkjr7af9dFNUr7rbfxTgANHn
 +e0gDYAvYRqGNbJTH6sKsEOz89ATpeYuzR2Y9HDyDi5zPk0IDNvn7Xh708thTgiKIsPn
 VkcX7XqXvllYTsHm2+6qXka3aKFFLB6tMuBDKNnyplCSVtCWhzzbzL3DBKmmbz8+09gI
 LWTlgBprm9fijkmGCY8IJrmoYljWD8610n7C+kGMKCM1OdI3lx3iLXRuNKXlMQJWUMqT
 w/jJUiTeS0FcJhV+ooUn1nJRGZ2B+dKT88MmRj7phqmng0QrFS1zmVtVxlyYv9Yn1iUp
 GnSQ==
X-Gm-Message-State: AOAM531TDUUjPW83fbXwy1GKDvJdSEaEVwgzVPDoV+JJKzAlNBiAkPS8
 xN53b5C0dMFCH8qwIuXSUkanfkdWmlmq/nEArVB5K9F4TcrMZw==
X-Google-Smtp-Source: ABdhPJzIV0G1mxs/jKCUYcadB9HtgFWAFt2sTXBe5nFeUpYJqfwWUzQPD9V+AKkMLVgcNbOJX2uXcKUkuAeMgdFIyS8=
X-Received: by 2002:a05:6808:d47:: with SMTP id
 w7mr412455oik.150.1614218055774; 
 Wed, 24 Feb 2021 17:54:15 -0800 (PST)
MIME-Version: 1.0
References: <20210217110602.esxs2qcwdtyzegtn@barbe>
 <648438d4-77c5-4177-f498-9356c435988f@ettus.com>
 <20210218092702.n43u6zpuagkgrazz@barbe>
 <20210224141215.duuxzinpiai72m7c@barbe>
In-Reply-To: <20210224141215.duuxzinpiai72m7c@barbe>
Date: Wed, 24 Feb 2021 20:54:04 -0500
Message-ID: <CAB__hTQO2DjRxy6ChAPiC4JxEWRmqysgB=FHtsn=iD1Y-RrzGg@mail.gmail.com>
To: =?UTF-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>, 
 usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] User register on X300 UHD 3.9
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============9209133064550882370=="
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

--===============9209133064550882370==
Content-Type: multipart/alternative; boundary="000000000000ce28c505bc1f6db2"

--000000000000ce28c505bc1f6db2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi C=C3=A9dric,
I don't fully know the answer, but if you look in the 3.9.LTS source code
for examples of "publish()", "subscribe()", and "coerce()" functions.
Something along the lines of
  grep "publish(" $(find ./ -name "*.cpp")  # if you are in the host/uhd
folder

At this point, I think that you then just access the given node of the
property tree using a get or set function.

Rob

On Wed, Feb 24, 2021 at 9:13 AM C=C3=A9dric Hannotier via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 18/02/21 10:27, C=C3=A9dric Hannotier via USRP-users wrote:
> > On 17/02/21 18:39, Marcus M=C3=BCller via USRP-users wrote:
> > > Then, you'll have to add a setter / getter in C++ UHD. That boils dow=
n
> to adding a coercer
> > > and getter to the property_tree. Copy existing code and modify the
> read/write address
> > > appropriately to address your settings_register!
> >
> > Ok, that is the part that I did not get.
> > I tried out with set_user_register but it failed.
> > Do you know where I can find documentation
> > for adding setter/getter to the "property_tree"?
>
> Does anyone know how to do that or can redirect me to documentation?
>
> Regards
> --
>
> C=C3=A9dric Hannotier
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000ce28c505bc1f6db2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi=C2=A0C=C3=A9dric,</div><div>I don&#39;=
t fully know the answer, but if you look in the 3.9.LTS source code for exa=
mples of &quot;publish()&quot;, &quot;subscribe()&quot;, and &quot;coerce()=
&quot; functions. Something along the lines of=C2=A0</div><div>=C2=A0 grep =
&quot;publish(&quot; $(find ./ -name &quot;*.cpp&quot;)=C2=A0 # if you are =
in the host/uhd folder</div><div><br></div><div>At this point, I think that=
 you then just access the given node of the property tree using a get or se=
t function.</div><div><br></div><div>Rob</div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 24, 2021 at 9:13 AM C=
=C3=A9dric Hannotier via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.=
ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">On 18/02/21 10:27, C=C3=A9dric Hannoti=
er via USRP-users wrote:<br>
&gt; On 17/02/21 18:39, Marcus M=C3=BCller via USRP-users wrote:<br>
&gt; &gt; Then, you&#39;ll have to add a setter / getter in C++ UHD. That b=
oils down to adding a coercer<br>
&gt; &gt; and getter to the property_tree. Copy existing code and modify th=
e read/write address<br>
&gt; &gt; appropriately to address your settings_register!<br>
&gt; <br>
&gt; Ok, that is the part that I did not get.<br>
&gt; I tried out with set_user_register but it failed.<br>
&gt; Do you know where I can find documentation<br>
&gt; for adding setter/getter to the &quot;property_tree&quot;?<br>
<br>
Does anyone know how to do that or can redirect me to documentation?<br>
<br>
Regards<br>
-- <br>
<br>
C=C3=A9dric Hannotier<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000ce28c505bc1f6db2--


--===============9209133064550882370==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9209133064550882370==--

