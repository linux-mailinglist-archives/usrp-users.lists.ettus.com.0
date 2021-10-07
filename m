Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D127F424DCF
	for <lists+usrp-users@lfdr.de>; Thu,  7 Oct 2021 09:09:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 022DA3853AD
	for <lists+usrp-users@lfdr.de>; Thu,  7 Oct 2021 03:09:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="QRA2LWzg";
	dkim-atps=neutral
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com [209.85.166.173])
	by mm2.emwd.com (Postfix) with ESMTPS id B47CE384EE7
	for <usrp-users@lists.ettus.com>; Thu,  7 Oct 2021 03:09:01 -0400 (EDT)
Received: by mail-il1-f173.google.com with SMTP id g2so4319283ild.1
        for <usrp-users@lists.ettus.com>; Thu, 07 Oct 2021 00:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Up6PCzdA1wRc3Q4l4HNIiB8JfwVI/DWmahzLBIThNyI=;
        b=QRA2LWzgzS2B8AkUi3r6j4U3yGQaqd3Rsqz6ldg4aLO4xVWP3RLfwzz/bXbsIcMJFx
         UNB6NTwQPD/TXjaIoN5/vks8M/UGj+j4OqYAG4bHFddgM8wnAxlkrIq3WszSlNkon9xa
         g7d++tpgbM1EhP1+9PF/FVhlE5Xtk1hAFIAfiOQHfAzg898Oc/gPS2HabqueIlQehpZh
         uc0iogxnkp26sOdD0rB0uQGJ/0iYIWj6aWAo1FxmE+0aSVk7tf4RqvscMuBgpmSdHH7o
         96bRlAPTLYK4ClgXnt1PT/0uM+hGP6WY8OjcwlXmH7bkE+oJqJDz1zAYgmnCdbTNxLQd
         TK2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Up6PCzdA1wRc3Q4l4HNIiB8JfwVI/DWmahzLBIThNyI=;
        b=GG8QaSiI30MjpdslTpsvrjGANGoC2aylWZP6mWseSNAEkLTcpN16z6yqo8kdGFXvGN
         UPl+TJSYeJoInw2LG1elXcNeoF8MrCLj97/tVQAU4uXkZDyz2gds17uWvYnonjbt5HG1
         9l25WNfKXlII7wwo8dpwoL7RVJR72EY5+LWmw6ArBWJfAMdQb5Y5z8LcZ8tgZdi0bvWo
         1HKd7jhJRbO9PyPTrFCrHcxWT/Ey8PGOxJmWiywV874CxnVZdlQkzHtLBtg0rUKoRDl4
         K9auBDLLOx1jCKDR0qSwOzPvG32cgHW2AXnvf95fpADorSOgeY54I9We9ogVtl14ndDu
         CTiw==
X-Gm-Message-State: AOAM531wThOsVzDnowV49EF6m4R5I5Cm57RvEWL1zX503CrGzIRtbxq5
	V5Y45qFhpisI3AI0NG4/yeBXtO7Td3PJ7fOG+0XGI3xeqTGQBQ==
X-Google-Smtp-Source: ABdhPJyYUltEud/LSprLN7C2n04RqPsgr2FUWLcXDMsXFbn7++YQ08SSIBai7+PED9odRH6dY7pn7K29Disqo/+XW30=
X-Received: by 2002:a05:6e02:194b:: with SMTP id x11mr1993290ilu.101.1633590541195;
 Thu, 07 Oct 2021 00:09:01 -0700 (PDT)
MIME-Version: 1.0
References: <240673658.793208.1632540300003.ref@mail.yahoo.com>
 <240673658.793208.1632540300003@mail.yahoo.com> <743b44ec-9caf-1f0a-fa61-2f3ef54b1e02@gmail.com>
In-Reply-To: <743b44ec-9caf-1f0a-fa61-2f3ef54b1e02@gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 7 Oct 2021 09:08:50 +0200
Message-ID: <CAFOi1A7yuMqibEnUnAzD6+=6Oi-TOcM_s=fsu537UckCcD7Tug@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: JH4ZP6FC457XUJJMNHECK3TE7ZP4XNZT
X-Message-ID-Hash: JH4ZP6FC457XUJJMNHECK3TE7ZP4XNZT
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Cross Compiling for N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JH4ZP6FC457XUJJMNHECK3TE7ZP4XNZT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4282051315102118099=="

--===============4282051315102118099==
Content-Type: multipart/alternative; boundary="000000000000eab1ac05cdbdef74"

--000000000000eab1ac05cdbdef74
Content-Type: text/plain; charset="UTF-8"

Now that I've seen your other thread Tellrell, if you're doing more custom
software work on the N310 you probably don't have to x-compile UHD unless
you want to modify UHD itself, or need to recompile against a UHD
dependency that you also changed (e.g., you modified the Boost version on
the device). If you're starting from bare metal, then MPM and UHD will
probably be most useful as a code reference, less as binaries.

--M

On Sat, Sep 25, 2021 at 5:57 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2021-09-24 11:25 p.m., Tellrell White via USRP-users wrote:
>
> I'm currently building an application that I want to run on the N310. I'm
> following the link attached
>
> USRP Hardware Driver and USRP Manual: USRP N3xx Series
> <https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_software_dev_sdk>
>
>
> USRP Hardware Driver and USRP Manual: USRP N3xx Series
> <https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_software_dev_sdk>
>
> where I've downloaded and installed the sdk toolchain and set the
> necessary paths, however, is it necessary as well to cross-compile UHD as
> well for the N310??
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> The N310 will already have UHD on it, so you'd only need to build it if
> you had mis-matched versions.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000eab1ac05cdbdef74
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Now that I&#39;ve seen your other thread Tellrell, if=
 you&#39;re doing more custom software work on the N310 you probably don&#3=
9;t have to x-compile UHD unless you want to modify UHD itself, or need to =
recompile against a UHD dependency that you also changed (e.g., you modifie=
d the Boost version on the device). If you&#39;re starting from bare metal,=
 then MPM and UHD will probably be most useful as a code reference, less as=
 binaries.</div><div><br></div><div>--M<br></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Sep 25, 2021 at 5:=
57 AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchv=
onbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-09-24 11:25 p.m., Tellrell
      White via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
      <div style=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif;f=
ont-size:13px">
        <div dir=3D"ltr">I&#39;m currently building an
          application that I want to run on the N310. I&#39;m following the
          link attached=C2=A0</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr"><a href=3D"https://files.ettus.com/manual/page_usr=
p_n3xx.html#n3xx_software_dev_sdk" rel=3D"nofollow" target=3D"_blank">USRP
            Hardware Driver and USRP Manual: USRP N3xx Series</a></div>
        <div><br>
        </div>
        <div id=3D"gmail-m_-5578340161000660506ydpf9c86721enhancr_card_2783=
769732"><a href=3D"https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_=
software_dev_sdk" style=3D"text-decoration-line:none;text-decoration-style:=
solid;text-decoration-color:currentcolor;color:rgb(0,0,0)" rel=3D"nofollow"=
 target=3D"_blank">
            <table style=3D"max-width:400px" cellspacing=3D"0" cellpadding=
=3D"0" border=3D"0">
              <tbody>
                <tr>
                  <td width=3D"400">
                    <table style=3D"max-width:400px;border-width:1px;border=
-style:solid;border-color:rgb(224,228,233);border-radius:2px" width=3D"100%=
" cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
                      <tbody>
                        <tr>
                          <td>
                            <table style=3D"background-color:rgb(255,255,25=
5);background-repeat:repeat;background-image:none;background-size:auto;widt=
h:100%;max-width:400px;border-radius:0px 0px 2px 2px;border-top:1px solid r=
gb(224,228,233)" cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
                              <tbody>
                                <tr>
                                  <td style=3D"background-color:rgb(255,255=
,255);padding:16px 0px 16px 12px;vertical-align:top;border-radius:0px 0px 0=
px 2px"><br>
                                  </td>
                                  <td style=3D"vertical-align:middle;paddin=
g:12px 24px 16px 12px;width:99%;font-family:YahooSans,&quot;Helvetica Neue&=
quot;,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif;border-radius:0px 0px=
 2px">
                                    <h2 style=3D"font-size:14px;line-height=
:19px;margin:0px 0px 6px;font-family:YahooSans,&quot;Helvetica Neue&quot;,&=
quot;Segoe UI&quot;,Helvetica,Arial,sans-serif;color:rgb(38,40,42);max-widt=
h:314px">USRP
                                      Hardware Driver and USRP Manual:
                                      USRP N3xx Series</h2>
                                  </td>
                                </tr>
                              </tbody>
                            </table>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </td>
                </tr>
              </tbody>
            </table>
          </a></div>
        <div><br>
        </div>
        <div dir=3D"ltr">where I&#39;ve downloaded and
          installed the sdk toolchain and set the necessary paths,
          however, is it necessary as well to cross-compile UHD as well
          for the N310??<br>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    The N310 will already have UHD on it, so you&#39;d only need to build i=
t
    if you had mis-matched versions.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000eab1ac05cdbdef74--

--===============4282051315102118099==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4282051315102118099==--
