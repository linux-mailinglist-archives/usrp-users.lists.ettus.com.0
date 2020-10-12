Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E426828AF22
	for <lists+usrp-users@lfdr.de>; Mon, 12 Oct 2020 09:39:54 +0200 (CEST)
Received: from [::1] (port=60276 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kRsQv-00067C-TW; Mon, 12 Oct 2020 03:39:49 -0400
Received: from mail-ej1-f52.google.com ([209.85.218.52]:33453)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <martin.braun@ettus.com>)
 id 1kRsQs-00062S-Ua
 for usrp-users@lists.ettus.com; Mon, 12 Oct 2020 03:39:47 -0400
Received: by mail-ej1-f52.google.com with SMTP id c22so21857632ejx.0
 for <usrp-users@lists.ettus.com>; Mon, 12 Oct 2020 00:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9s14Z7NGqZHa1dngOoZ0hfwi+yPNni8Ss/aCB6NGxfQ=;
 b=zu7RECVZiQE0J0SReGFQDf1TbREmjbStpZ53BGXgJntJOYC+6FQ3feGWOosJ9Tj3IO
 LRZt1yvpImNxYDSDyqQNy54/RSJqdmfSmsnlUIBbmuQUAS+Y/Agh736co/65B5hnXqSZ
 oeLQYdrF/Csgyfl+oiVIcsZNXaTHYROWF9N/lAmL0aRCdUyPaZhGIIgu5zXm25aVTLyZ
 KXqHv+l86hLArVc8Y5Nkc0VCtPDas/vaaXqm+PMgTe/jdIvES0XOPqCBFGr9CSrx2TdM
 /VnUcQbAUuknNKJvyVkIdfTnQcVnTs6kJX0XhCQLHrcoklH0HdCxVQkGMkAzVCEPXXN0
 B+vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9s14Z7NGqZHa1dngOoZ0hfwi+yPNni8Ss/aCB6NGxfQ=;
 b=cvYbrvlx+jhG/72NfC0BLD065i2+uIHY3S4gx699bldX44coG8Ot67vgxBN2oGhWOu
 /1ZGWdezRT4vUP4Tb2DdiVZN+LDjegS5cW+muyoiHmiTQh2JSmc2RaC+J9CSc+sX2oNO
 6rphlUdq6bnnOELgV8yhT9yEM95+hNika23xSkqeVviX7/VphLBA5SSxyzBwsxnOHG+3
 drqr3bCEp5lDTDJCSeXSr3UauwV1/t87j8wAVxgisPeHG5YMh3Snf5MggHRi8iXbXhlZ
 I3E5HpUcUec7aJGpHMsTP+sNE2U/uTkEr5wIg6I2KwVpRK4x5JkyZ4qbugBBj5Xh+yQR
 ox2g==
X-Gm-Message-State: AOAM531lW8etopsLUluN/9FKGNziI5qnX+L0P0+yHsL6Mv/fEGrRIJ4G
 oJ/9RIYB692O9rxGlJLHS5hX+dNqG0GkbOpIhCsVnq82
X-Google-Smtp-Source: ABdhPJwF9e9WmARQPuA497Qr8dbjqAYAB54G1T/rHoqWT9KwYmgJYaM9cPtZ2Sqe6e2lTq0RVSulUXJQ7eBj1dIWR1M=
X-Received: by 2002:a17:906:8053:: with SMTP id
 x19mr14835226ejw.139.1602488345832; 
 Mon, 12 Oct 2020 00:39:05 -0700 (PDT)
MIME-Version: 1.0
References: <1140635092.131635.1602365919984.ref@mail.yahoo.com>
 <1140635092.131635.1602365919984@mail.yahoo.com> <5F825A23.2010901@gmail.com>
In-Reply-To: <5F825A23.2010901@gmail.com>
Date: Mon, 12 Oct 2020 09:38:54 +0200
Message-ID: <CAFOi1A5GrwNh8Ei5szwAjWn6yE9NjxGvqS7AyiAmXZBoinyUbQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] B210 FPGA access
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
From: Martin Braun via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Braun <martin.braun@ettus.com>
Content-Type: multipart/mixed; boundary="===============3079220893938778929=="
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

--===============3079220893938778929==
Content-Type: multipart/alternative; boundary="0000000000009c44e405b17464a7"

--0000000000009c44e405b17464a7
Content-Type: text/plain; charset="UTF-8"

See also https://files.ettus.com/manual/page_usrp_b200.html#b200_customfpga

On Sun, Oct 11, 2020 at 3:05 AM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 10/10/2020 05:38 PM, Jay Labhart via USRP-users wrote:
>
> I am in the process of modifying the b210 fpga files and would like to
> know if there is an interface that has been established for the FPGA and
> host to communicate with each other.  I have seen a poke64 and peek64 but
> have also seen set_user_register().
>
> Can anyone share if the b210 has the FPGA to host interface?
>
> Thanks
> Jay
>
> You'll likely need to muck about with:
>
> ./host/lib/usrp/cores/user_settings_core_3000.cpp
>
>
> My understanding of peek/poke is that they're conceptually reserved for
> UHD driver code that "knows" where things are inside the FPGA
>   in question and that the preferred path is the user_settings stuff.
>
> But I'm not an FPGA guy so that's about as much as I know.
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000009c44e405b17464a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">See also <a href=3D"https://files.ettus.com/manual/page_us=
rp_b200.html#b200_customfpga">https://files.ettus.com/manual/page_usrp_b200=
.html#b200_customfpga</a></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Sun, Oct 11, 2020 at 3:05 AM Marcus D. Leech vi=
a USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@l=
ists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 10/10/2020 05:38 PM, Jay Labhart via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div style=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif;f=
ont-size:16px">
        <div dir=3D"ltr">I am in the process of
          modifying the b210 fpga files and would like to know if there
          is an interface that has been established for the FPGA and
          host to communicate with each other.=C2=A0 I have seen a poke64 a=
nd
          peek64 but have also seen set_user_register().</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">Can anyone share if the b210
          has the FPGA to host interface?</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">Thanks</div>
        <div dir=3D"ltr">Jay<br>
        </div>
      </div>
      <br>
    </blockquote>
    You&#39;ll likely need to muck about with:<br>
    <br>
    ./host/lib/usrp/cores/user_settings_core_3000.cpp<br>
    <br>
    <br>
    My understanding of peek/poke is that they&#39;re conceptually reserved
    for UHD driver code that &quot;knows&quot; where things are inside the =
FPGA<br>
    =C2=A0 in question and that the preferred path is the user_settings
    stuff.<br>
    <br>
    But I&#39;m not an FPGA guy so that&#39;s about as much as I know.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000009c44e405b17464a7--


--===============3079220893938778929==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3079220893938778929==--

