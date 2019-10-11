Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E48D4AB3
	for <lists+usrp-users@lfdr.de>; Sat, 12 Oct 2019 01:09:27 +0200 (CEST)
Received: from [::1] (port=37802 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iJ42E-0005PP-RP; Fri, 11 Oct 2019 19:09:22 -0400
Received: from mail-lf1-f47.google.com ([209.85.167.47]:44185)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <martin.braun@ettus.com>)
 id 1iJ42A-0005Bq-Bq
 for usrp-users@lists.ettus.com; Fri, 11 Oct 2019 19:09:18 -0400
Received: by mail-lf1-f47.google.com with SMTP id q12so8102993lfc.11
 for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2019 16:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oCL5S+Y0nPQ8F4PB5XHdjRWkhz6bOTwsuUweSAk/SRg=;
 b=BegvwCHG96OLW8iO6MCPz45iZGCVAlgOYa69ZtalztsSIFz+LTBEr+OAZzayfgHr0A
 YC9aUFY2kYJ4t429qeB2n90k+3rvNCZSlqtn9DwhYIeL8/NSIWT8++1IIEUsLYrKayLD
 92ErDVCIaTnRbGWGnX9pfaX/1XE9Wp7Sgrm2/4EWK8YKaLf4LCVC1L4yjuuXtUzrnfsq
 OjsgJYfbZOCkoYPzUOMe75GmUM74Dp+RqiGKRnBRA3Pym2NjV5tzTBP6K7HVTCWpVF3C
 B1lFEz/quASTtT9FTsUUvhmku0Eld/iFQZxxqmkzAf9mPAa+xPUToVhhc3385XmvRCHu
 ZN7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oCL5S+Y0nPQ8F4PB5XHdjRWkhz6bOTwsuUweSAk/SRg=;
 b=nGY755cFH5XRbwXeTI8F3MBbHk0tXuTMfuALb8MiOMpL71XJZLL0cgYMk5p3xNU3FW
 yFvdsukGxLwQY2NZ846lFevFqwfbrieAAA18Yll/Po+X9XSmNwl0zjASzef0GcwL3XOH
 KrVk8NQ/P5ym7fi90Td8v3HR9vSbcE0/o5XyxY7qmUER/p6JYOwJEXwhnxchA0tpY4MV
 MPzGPoUe1bFPEFvnYX68GSzxHS4Jt38TN/O5w0fsll/wsrEMamaWEIGfJ9phZq7WtZ+a
 rHm+5STyomFvwT5+li4BwINPMpAzS5K1cKXGYfmAlLrybMOpRR3l7+qyPKVMYFgs8dhn
 PxNw==
X-Gm-Message-State: APjAAAX0FAL9xLPl/JKHuhQhY8RsngKqEbA2oBeBtOzRquBK1kxuj99o
 vsZlOpaoyNQxe4BQucyWTu80VA8mjiR378DJ3WLYQAyk
X-Google-Smtp-Source: APXvYqy9U/IpZ6mjexA6wtcvDVfhOjkYjQJGJ7/Wqha6l5C40ow7EKjc3KmUdEh1UCTJmEWvB/+mVTk5wt0jOUkOVbo=
X-Received: by 2002:ac2:5b4e:: with SMTP id i14mr10301902lfp.9.1570835316998; 
 Fri, 11 Oct 2019 16:08:36 -0700 (PDT)
MIME-Version: 1.0
References: <6EAAB96A-D0DD-4531-B3CB-2E5912511ED2@gmail.com>
In-Reply-To: <6EAAB96A-D0DD-4531-B3CB-2E5912511ED2@gmail.com>
Date: Fri, 11 Oct 2019 16:08:26 -0700
Message-ID: <CAFOi1A6MFu9dEpBG8rT=ZPYK-9SK-nDfW+Fc=JTSkGtAebn-og@mail.gmail.com>
To: Francesco Restuccia <frestuc@gmail.com>
Subject: Re: [USRP-users] Some questions regarding DDC implementation
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Martin Braun via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Braun <martin.braun@ettus.com>
Cc: ishai alouche via USRP-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3996556385675217615=="
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

--===============3996556385675217615==
Content-Type: multipart/alternative; boundary="000000000000121de20594aa9946"

--000000000000121de20594aa9946
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Half-Bands are very flat in the passband, and somewhat efficient to
implement because every second tap is zero. The CIC on the other hand, is
super efficient, but has a horrible frequency response.

So, you want to use the half-bands for decimation whenever possible. You
will have fewer aliases, the spectrum looks nicer, etc.

More halfbands is always better. But two halfbands was chosen because on
the N210, it's a good compromise between available resources and spectral
improvements. Also, keep in mind that you can only stack halfbands as long
as your decimation is a multiple of two. If your decimation is 6 (=3D 2 * 3=
),
then you can only use one halfband, and set the CIC to 3. In other words,
adding another halfband only enables rates where the decimation rate is a
multiple of 8, and so on.

Next, why are they different. That was another compromise. More taps are
always better, so why not use the bigger one twice? That's because when
cascading the halfbands, the fidelity of the second filter reduces the
requirement for a super-good first filter. If you draw this on a piece of
paper, it's more obvious, but here's an attempt at writing it as text:
Fewer taps in a halfband mean the transition band (from passband to stop
band) is wider, which makes the flat passband smaller. However, because the
second half-band will further reduce the total available bandwidth, you
don't need a super sharp transition zone.

Finally, what does the multiplier do. In software, we calculate a total
gain of our DSP chain, based on the CIC settings and some other numbers we
have figured out. For example, the CORDIC has an almost constant, non-zero
gain. and the CIC decimator has a non-constant gain which is a function of
the decimation (all of this because we're doing fixpoint math). We try and
negate this as much as possible by multiplying the output with a
compensation factor.

-- M

On Fri, Oct 11, 2019 at 10:57 AM Francesco Restuccia via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Dear all,
> I have some questions regarding the DDC implementation (ddc_chain.v,
> usrp2):
>
> 1) Why do we need two half-band filters (one large and one small) after
> the CIC? What is their purpose? Can=E2=80=99t we use just one half-band?
> 2) What is the purpose of the scale factor multiplication after hb2? What
> does it compensate for? How do we decide its value?
>
> Thanks,
> Francesco
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000121de20594aa9946
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Half-Bands are very flat in the passband, and somewha=
t efficient to implement because every second tap is zero. The CIC on the o=
ther hand, is super efficient, but has a horrible frequency response.</div>=
<div><br></div><div>So, you want to use the half-bands for decimation whene=
ver possible. You will have fewer aliases, the spectrum looks nicer, etc.</=
div><div><br></div><div>More halfbands is always better. But two halfbands =
was chosen because on the N210, it&#39;s a good compromise between availabl=
e resources and spectral improvements. Also, keep in mind that you can only=
 stack halfbands as long as your decimation is a multiple of two. If your d=
ecimation is 6 (=3D 2 * 3), then you can only use one halfband, and set the=
 CIC to 3. In other words, adding another halfband only enables rates where=
 the decimation rate is a multiple of 8, and so on.</div><div><br></div><di=
v>Next, why are they different. That was another compromise. More taps are =
always better, so why not use the bigger one twice? That&#39;s because when=
 cascading the halfbands, the fidelity of the second filter reduces the req=
uirement for a super-good first filter. If you draw this on a piece of pape=
r, it&#39;s more obvious, but here&#39;s an attempt at writing it as text: =
Fewer taps in a halfband mean the transition band (from passband to stop ba=
nd) is wider, which makes the flat passband smaller. However, because the s=
econd half-band will further reduce the total available bandwidth, you don&=
#39;t need a super sharp transition zone.</div><div><br></div><div>Finally,=
 what does the multiplier do. In software, we calculate a total gain of our=
 DSP chain, based on the CIC settings and some other numbers we have figure=
d out. For example, the CORDIC has an almost constant, non-zero gain. and t=
he CIC decimator has a non-constant gain which is a function of the decimat=
ion (all of this because we&#39;re doing fixpoint math). We try and negate =
this as much as possible by multiplying the output with a compensation fact=
or.</div><div><br></div><div>-- M<br></div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 11, 2019 at 10:57 AM=
 Francesco Restuccia via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.=
ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">Dear all,<br>
I have some questions regarding the DDC implementation (ddc_chain.v, usrp2)=
:<br>
<br>
1) Why do we need two half-band filters (one large and one small) after the=
 CIC? What is their purpose? Can=E2=80=99t we use just one half-band? <br>
2) What is the purpose of the scale factor multiplication after hb2? What d=
oes it compensate for? How do we decide its value?<br>
<br>
Thanks,<br>
Francesco<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000121de20594aa9946--


--===============3996556385675217615==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3996556385675217615==--

