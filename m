Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E90C9F78
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2019 15:32:51 +0200 (CEST)
Received: from [::1] (port=39060 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iG1Ds-0003hv-HH; Thu, 03 Oct 2019 09:32:48 -0400
Received: from mail-oi1-f180.google.com ([209.85.167.180]:33189)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1iG1Do-0003Kf-US
 for usrp-users@lists.ettus.com; Thu, 03 Oct 2019 09:32:44 -0400
Received: by mail-oi1-f180.google.com with SMTP id e18so2620997oii.0
 for <usrp-users@lists.ettus.com>; Thu, 03 Oct 2019 06:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=i6VVD6YYlaVXdCP0t26IJb40QSyXbrdAox3qAo03xpk=;
 b=y8F9WzBQJS5o4kmbzHZGGuHdt4nS9HwPxu23O1zdBCHMvKVZcQQcxjZdNYOfjWjzuU
 yRTnn9xNEcbwTWKAqJA564N8jvR0EaIyRyGvvSJnTWyz8k5vjCAlvCsbxCI2GPhWQ99N
 BYCPJPWKA7oYQPELjfEQnfQR+0qN7ftunkMP71n1NZ1E9ZJQmUgwWEE/IMaTCezTIfp3
 FRQqzKfx4HHt725R2wOndnM8kXr6PrgJD+IeLAxqJ739GhWNpeZQzVl+r+1N5+hxE3Xz
 whxtYdyM2xVHrr+o9M6vSiTIa25efsXT27l1QYJ5O7JteEwLNrnrXkG9LCsifej324H7
 cAig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i6VVD6YYlaVXdCP0t26IJb40QSyXbrdAox3qAo03xpk=;
 b=B1/yBkGDmFSp4fn1jKkmXVmTQfqVHiOxiw4aBI92+92kh3k4dSwB46O/ZCmvhlg5eu
 RGGaMNXLVNACA0B1aTxIK7XH9SrL45Jy8vF5NUbimFTlmEjToDjsna2L+9Ra6DZFogv3
 qWigYnZSHfVC+LMCoKvO2vUjfFzzFYRXmdKzz36guxT+Os6N0sm1Eb+0TkU2ZHT2cl4o
 2yYeBMJpvaTrtJ44lKXTCrRlQSLtfSP6o/p+HXm1jG9QCJXN5DWsD+OhrpSor+QWm2rG
 81id2fFd4bJjM9qUgRIEks7PsCeQsW/1OZS80uuYU7d0JfhGXA59W0bWzc4TL6fsZ/Hl
 0Ggg==
X-Gm-Message-State: APjAAAUTgtYGSlXZS+B20buexll/e8SdcY4T8vSym9/ZXsnfHZWwfEkl
 fJdDe5cGTJZp3JEqjcdJz4lZ+M+DYbFJdJdcNOqXAsdJjBt3/Q==
X-Google-Smtp-Source: APXvYqzrYQP0/ZRzKXxbGxj7icxk1LQwAKoiGoCJTXfyToyeh/FnEWxbh2Kt86h4xb5x7UO9rBM3ZW71yAC2A0tOtik=
X-Received: by 2002:aca:7250:: with SMTP id p77mr2870137oic.157.1570109524070; 
 Thu, 03 Oct 2019 06:32:04 -0700 (PDT)
MIME-Version: 1.0
References: <9d637be0-b80a-33cb-492d-0197e3ba6f5a@3db-labs.com>
 <5D576746.1010008@gmail.com>
 <e74ba0af-5c65-9b46-d3d7-360ab9d9dda5@3db-labs.com>
 <CACaXmv-XwDKP8ok_325K_hahwWUAuesQJddD8-CkoNrJY7GqfQ@mail.gmail.com>
 <8a61a15c-6018-c30b-2cd3-15220e2ea1e6@3db-labs.com>
 <CACaXmv87s56ttKCk4io8Z5nJq3DjyhzL6Qv1PgTMUvahmSad7A@mail.gmail.com>
 <d551a3fe-5f6a-147a-6bf3-0be3aaa86bcd@3db-labs.com>
 <39850419-2871-9e95-c355-677aa4543b60@3db-labs.com>
 <CACaXmv_Ar3Lq02UvuMhTv1Pi8Fv2TGkX5n642YxTW5E6W5NNVQ@mail.gmail.com>
 <2e44da01-b922-5020-d4cc-4984fd55e1f0@3db-labs.com>
In-Reply-To: <2e44da01-b922-5020-d4cc-4984fd55e1f0@3db-labs.com>
Date: Thu, 3 Oct 2019 09:31:53 -0400
Message-ID: <CAGNhwTN4sxy1h78OXx=v=mzU5vwHN2bpQ-SNQrnrZYZjFwsWuw@mail.gmail.com>
To: Jason Roehm <jasonr@3db-labs.com>
Subject: Re: [USRP-users] Incorrect RX time_spec values with X300, TwinRX,
 and v3.14.1.0
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>,
 Neel Pandeya <neel.pandeya@ettus.com>
Content-Type: multipart/mixed; boundary="===============1174897923678520702=="
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

--===============1174897923678520702==
Content-Type: multipart/alternative; boundary="00000000000070eb190594019cc4"

--00000000000070eb190594019cc4
Content-Type: text/plain; charset="UTF-8"

Hi Jason - I've been working with Neel on this topic. I'll email you
off-list to discuss more. If we come up with anything useful we can always
reply to the overall list. - MLD

On Thu, Oct 3, 2019 at 8:48 AM Jason Roehm via USRP-users <
usrp-users@lists.ettus.com> wrote:

>
> On 9/26/19 9:26 AM, Neel Pandeya wrote:
>
> Hello Jason:
>
> My apologies for the delay. We were super busy with GNU Radio Conference.
> Thanks for providing a stand-alone test program. I'll try to reproduce this
> issue later today or tomorrow, and I'll get back to you with an update.
>
> --Neel Pandeya
>
> Neel,
>
> Have you had any luck?
>
> Thanks.
>
> Jason
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


-- 
Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/

--00000000000070eb190594019cc4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jason - I&#39;ve been working with Neel on this topic. =
I&#39;ll email you off-list to discuss more. If we come up with anything us=
eful we can always reply to the overall list. - MLD</div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 3, 2019 at 8=
:48 AM Jason Roehm via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.et=
tus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p><br>
    </p>
    <div>On 9/26/19 9:26 AM, Neel Pandeya wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif">Hello Jason:</div>
          <div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif"><br>
          </div>
          <div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif">My apologies for the
            delay. We were super busy with GNU Radio Conference. Thanks
            for providing a stand-alone test program. I&#39;ll try to
            reproduce this issue later today or tomorrow, and I&#39;ll get
            back to you with an update.<br>
          </div>
          <div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif"><br>
          </div>
          <div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif">--Neel Pandeya</div>
          <div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif"><br>
          </div>
        </div>
      </div>
    </blockquote>
    <p>Neel,</p>
    <p>Have you had any luck?</p>
    <p>Thanks.</p>
    <p>Jason<br>
    </p>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Michael D=
ickens<br>Ettus Research Technical Support<br>Email: <a href=3D"mailto:supp=
ort@ettus.com" target=3D"_blank">support@ettus.com</a><br>Web: <a href=3D"h=
ttps://ettus.com/" target=3D"_blank">https://ettus.com/</a></div></div></di=
v></div>

--00000000000070eb190594019cc4--


--===============1174897923678520702==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1174897923678520702==--

