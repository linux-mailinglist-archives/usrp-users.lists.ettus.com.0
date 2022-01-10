Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DD14948A228
	for <lists+usrp-users@lfdr.de>; Mon, 10 Jan 2022 22:50:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CB90C38540A
	for <lists+usrp-users@lfdr.de>; Mon, 10 Jan 2022 16:50:45 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="PrDXoKos";
	dkim-atps=neutral
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	by mm2.emwd.com (Postfix) with ESMTPS id D29B1385221
	for <usrp-users@lists.ettus.com>; Mon, 10 Jan 2022 16:49:50 -0500 (EST)
Received: by mail-yb1-f176.google.com with SMTP id h14so24489516ybe.12
        for <usrp-users@lists.ettus.com>; Mon, 10 Jan 2022 13:49:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1lEJ+efxeGlLMIM6WGDbI1NQcSuXbNHwsZjtnke6IEg=;
        b=PrDXoKosVSvSXwF5ySQEQbGb3WSbYrzuOUb8v3sK23F1/OT0uGruFP6PIjB9Z0FO7d
         nJO/kMVDOnaR6NF4h5rySHtS7Gqgbnj0PnPxIB8jh5z8aiqPs3NHBKUTWRGUVvRTPQet
         LlMKI2O/Xn9ntmM+O3D7NKPo0PD3i5u7R1Re7KOrU21uPDZMJUhq7xydlOTWPXKJV/bH
         gkxW9AdsDjIMTo2qp3/1+fak0eamnCOJwFEmVrDT58wSja8LOAip5JOjZhUX1F4piZ4m
         wTYm+0zphGNzz3cFWdsEboHpVtPGuykR2r9LTkdgvkTsEhRa5rKzd/lR2+0dm1iPa1Vt
         dAiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1lEJ+efxeGlLMIM6WGDbI1NQcSuXbNHwsZjtnke6IEg=;
        b=VEq2PwzldJXyB4tCqUtTS2Rp5kPm7djSBIYPznJdnxx9OrdHg+kMJVaM+hlxzXpMtb
         slMlG8A6KZZcX44FFLNjgBqbnK4oeC/B6QO3ZUiJxcxYIyRHXUQ3EmvwQ7g0mmXXUG7k
         7etvtFw5kna2WOljKnaLCMzJ1W8XvIKe+wGAxO4Qb4GJ1ZUfnuOvTjGoin7LtU38mLka
         dpeY52+IgHVf8YQJimdWLThD01fC4IjketycmfvoIp1GAcsDADaL7MbZmHopQ8eo10vb
         lU5WOZdjft1N+6rT27+9azYja9ldbu65js8aXsO0bDq7JY5uxffhI2zdUkWRY+Vn5Vu4
         hu2w==
X-Gm-Message-State: AOAM533ii6HBIzPSVR8wXO7PDJTzBM8KAtrjatDuTbf/Pt7yzwaQrAWC
	fu69o+HrWXkcppoUbioBJpxKYKP5bTdbcN2UMnGn1wed7b/7ToLF
X-Google-Smtp-Source: ABdhPJxdGjDJhTcH1HPBcmajJJC/903q/HE2JiSifY52mvpIb0k6rvk3yiLCN0qZDpAPAg+ctQSi9/JIfwih9q9LRPM=
X-Received: by 2002:a25:d696:: with SMTP id n144mr2406610ybg.13.1641851390214;
 Mon, 10 Jan 2022 13:49:50 -0800 (PST)
MIME-Version: 1.0
References: <Mailbird-82239a9a-b4c6-49d0-861f-6d5fbadd0d3e@gmail.com> <17e33a0e-743e-b544-b89b-299e0f1cf3c2@gmail.com>
In-Reply-To: <17e33a0e-743e-b544-b89b-299e0f1cf3c2@gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 10 Jan 2022 15:49:34 -0600
Message-ID: <CAFche=hWZh=YZXD68TEFAOM8bmO6bRZFU129+zi9HhvMOmHrBg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: UMPJRBEIVAGF6FRZ4RY42EFDJZKZUM5A
X-Message-ID-Hash: UMPJRBEIVAGF6FRZ4RY42EFDJZKZUM5A
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: FPGA utilizaton summary for B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UMPJRBEIVAGF6FRZ4RY42EFDJZKZUM5A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0617911035348977239=="

--===============0617911035348977239==
Content-Type: multipart/alternative; boundary="000000000000e3586205d54150b2"

--000000000000e3586205d54150b2
Content-Type: text/plain; charset="UTF-8"

The build process for the FPGA generates a report with those numbers. If
you built the FPGA, look for a file named usrp_b210_fpga.syr and search for
"Device utilization summary" in that file.

Wade

On Sat, Jan 8, 2022 at 2:04 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-01-08 15:00, page heller wrote:
>
> Is there a command to print the FPGA utilization summary for an B210? I'm
> looking to print a report like that shown in
> https://kb.ettus.com/B200/B210/B200mini/B205mini#B210_5. -page
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> Those reports come from the FPGA image generation tools from Xylinx.
>
> The Makefile for b2xx FPGA is here in the source tree:
>
> uhd/fpga/usrp3/top/b200
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e3586205d54150b2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The build process for the FPGA generates a report wit=
h those numbers. If you built the FPGA, look for a file named usrp_b210_fpg=
a.syr and search for &quot;Device utilization summary&quot; in that file.</=
div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sat, Jan 8, 2022 at 2:04 PM Marcus=
 D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">
 =20
   =20
 =20
  <div>
    <div>On 2022-01-08 15:00, page heller wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div id=3D"gmail-m_2830689060891565671__MailbirdStyleContent" style=
=3D"font-size:10pt;font-family:Arial;color:rgb(0,0,0);text-align:left" dir=
=3D"ltr">Is there a command to print the FPGA utilization
        summary for an B210? I&#39;m looking to print a report like that
        shown in=C2=A0<a href=3D"https://kb.ettus.com/B200/B210/B200mini/B2=
05mini#B210_5" title=3D"Click to open in a new window or tab
          https://kb.ettus.com/B200/B210/B200mini/B205mini#B210_5" style=3D=
"font-family:Arial,Helvetica,sans-serif;font-size:13px" target=3D"_blank">h=
ttps://kb.ettus.com/B200/B210/B200mini/B205mini#B210_5</a>.
        -page</div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    Those reports come from the FPGA image generation tools from Xylinx.<br=
>
    <br>
    The Makefile for b2xx FPGA is here in the source tree:<br>
    <br>
    uhd/fpga/usrp3/top/b200<br>
    <br>
    <br>
  </div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000e3586205d54150b2--

--===============0617911035348977239==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0617911035348977239==--
