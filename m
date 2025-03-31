Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9544FA76B9E
	for <lists+usrp-users@lfdr.de>; Mon, 31 Mar 2025 18:10:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C5B58385528
	for <lists+usrp-users@lfdr.de>; Mon, 31 Mar 2025 12:10:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743437410; bh=EdkSvmBDAKdkMM42Eqw0Oa0u9lnyshEQ1W8/NqidFWg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=uhZGzdql57MSVjo2La2KXFAgyZPFS04lfnlTIcnpjHi2pEGDDnEXeij5qObaFm/YU
	 xDAEimV2S4Xh/Sn2iDZ+k+sIB/rWZpyGnlpbq34TLQxf9UfonrH+8BpNIjQ7QxcK6L
	 CR4DVZIvVebvSSbKarc4ql2niNw3eh0vvlxHCabCS+H4Y9irtvkywgRvjw+7dXtue0
	 A/vb5SOg2FTfpDO54K+/GITDSZFZ5OEypxioZklghArwywovzic9uAGudZMBaspNUi
	 h6IeUBiy9B+9hsVyH5a+hBMrR61A04lMu/olMr1CdaeehW3l42QeySvJi/INeATH0B
	 iti4/wcfP8W3w==
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 8918B384E82
	for <usrp-users@lists.ettus.com>; Mon, 31 Mar 2025 12:09:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="V+TEaOlY";
	dkim-atps=neutral
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ac2dfdf3c38so831593766b.3
        for <usrp-users@lists.ettus.com>; Mon, 31 Mar 2025 09:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743437394; x=1744042194; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8ggblx0g9BMcikO+xWvoTJQnIVdGkj3fFmFEEWly+Xo=;
        b=V+TEaOlYlZazFqhmTrs2rUoaW18zddeJmwdmJvuLho6e2p4IEVC/xsN927+MiDkrCg
         RZVvz2vN69vejACTTkMfW2+LFfOueQQheBwpUmSYCZnTA0IF6z7IDhOBpiNI3A7Ix/jC
         dKob3C7d7iO5Jko31hkII0Jj2hE4pYRiJHp/AzgJSm2f3uFaq5jLbaVBuTWIuHRzJ4yW
         nbBbvXMfRj6SYnZpiErPlZl3OAbWQcAY1vENzilb9Bi1db3BPxBakkfcx8d3XpmgAa7h
         Ey9saLLVfmvqMk+ispm2EqAjezi8gQOfiP3f/IBlnlr0brbjrsUExIM1ItOn6Ch9b++O
         K4Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743437394; x=1744042194;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8ggblx0g9BMcikO+xWvoTJQnIVdGkj3fFmFEEWly+Xo=;
        b=cZK/xivjhO3H/7yUpl49CWao2sd/6zSWVPkFhbnvYakOqNcW0y1P6B2f31hrupNLg7
         UNxC6IFnkWgLlwzQvCBN8xq1GfR8XTtD3SizMfLz5hfwUqR9XLof9YBh79c+9kW5niFu
         r/aAIZTRiUXA3MIbnEJlffVD9qlrW5SIsuPPnQiqj2khvWLHUHd4zC83k5F613Zvwyip
         RtyDUFz5y/B6zgls9cFOJhcG2LU5thiMAiyKQqsPz8c+Penv4UlcMhnJlBhYVTfAJAts
         uF0vI9YlU99PBIvJoNlBRhwYvSH5fU0AIBuSi7Bc/xiwPm8vMhCeed4paAsBBwU2xF/Z
         20dQ==
X-Gm-Message-State: AOJu0YxGQGyritpIi4pLoX8znEK89fGVXIHCbF8X87oeKKPM7SWPQosH
	jmcPaH9J4XU7cq7PxE7Q1ZXOpDpOMP6cWimYwlQJ9h5riR5BG/VyUl86yhKMumxm3VHVKHq6QyS
	zGmv1G2Kq9yTtVWDI2M1nmHxrIoSdXA==
X-Gm-Gg: ASbGnctqBS1rOuCzi/ssWaXf/3mzAsVnzd6uCJVFcQ0fzGqXFSFriN7Si8t59P99RwM
	vMqMQwljnP0dI+wdFX4grMF9eObH7yMq6DbAHgiQWv3NAz5k8iYUvYfiDtu55iDSfEtESCJ/Eou
	2a7qIVMV0Pr7NtKfxRFfLGWXlCnF8yghDmC4++0DM2cHQ=
X-Google-Smtp-Source: AGHT+IFY0DMGnpLi7ttV4eQyYHyjkb7Iat8wnNeRbOkfgUk4t7YKI3o8Xxv7qbQXJpm5flshV+3ZgGkeUpUJpUod/BQ=
X-Received: by 2002:a17:906:dc95:b0:ac7:32b7:f331 with SMTP id
 a640c23a62f3a-ac738a5b310mr913066166b.17.1743437394075; Mon, 31 Mar 2025
 09:09:54 -0700 (PDT)
MIME-Version: 1.0
References: <CALM_BfYZML=gn1qcQEDVCc5W+DdeojAVxiFmKdmDESFuA1Ep6Q@mail.gmail.com>
 <b577024e-902c-4eed-8a32-409d7ba8335a@gmail.com> <CAOEzSFTb_RoOYxYuDzR4HHYQjL_rZz2oXKB9F3qHQ9op3xis+g@mail.gmail.com>
 <PH1P110MB1284346766755262C416A81D98A1A@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
 <a5f4e895-2921-4c9d-9979-ede6bf91ceb0@gmail.com> <1606018006.2100559.1743436319414@mail.yahoo.com>
 <df01792d-cf76-4468-ac42-87a79806bd66@gmail.com>
In-Reply-To: <df01792d-cf76-4468-ac42-87a79806bd66@gmail.com>
From: Mark Gannet <mgannet@gmail.com>
Date: Mon, 31 Mar 2025 09:09:43 -0700
X-Gm-Features: AQ5f1Jp6_4-qkI92_v4eSbjA8JC0BUramdlR0HACmtcP22Um3NO6wtukvmz5qFo
Message-ID: <CABL+oDbXX70ZK0hD=MgjH6BgWwBWN_B21j9Q3T8ZTOt43dOwzA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: M7SPI3HC7YFAIN4TLQXDQH4IIVRBHMB4
X-Message-ID-Hash: M7SPI3HC7YFAIN4TLQXDQH4IIVRBHMB4
X-MailFrom: mgannet@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Max Input RF Power in X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M7SPI3HC7YFAIN4TLQXDQH4IIVRBHMB4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2729616665028020606=="

--===============2729616665028020606==
Content-Type: multipart/alternative; boundary="0000000000008fe9f70631a5a660"

--0000000000008fe9f70631a5a660
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Just to follow on. The BasicRx is +10 dBm. I've been using that as a max to
the BasicRx for quite a while without issue. But the UBX-160 knowledge base
indicates -15 dBm. I'd assume if you're using the UBX that you'll be using
the configurable on-board amplification (up to 31.5 dB).

https://kb.ettus.com/UBX


On Mon, Mar 31, 2025, 8:59=E2=80=AFAM Marcus D. Leech <patchvonbraun@gmail.=
com>
wrote:

> On 31/03/2025 11:51, zhou via USRP-users wrote:
>
> Hi,
>
> What is the max input signal power to RF ports in X310?  There is a spec
> in the below link:
>
> https://www.ettus.com/wp-content/uploads/2024/01/X300_X310_Spec_Sheet_202=
4-01-23.pdf
> There are max output powers, but not input power.
> I am using UBX-160 daughterboard.
>
> In https://kb.ettus.com/X300/X310_Getting_Started_Guides, it says that
> "Never apply more than -15 dBm of power into any RF input."
>
> ChatGpt says that "*UBX 40*: *+10 dBm* (10 mW)"
>
> What is the max input signal power?
>
> Thanks for any comments,
>
> Zhou
>
> -15dBm is somewhat conservative, but if that's what the manufacturer
> recommends, I'd go with that, rather than a
>   hallucination produced by ChatGPT.
>
> The receivers on USRPs are generally designed to be connected to an
> antenna, and as such have sensitive, lower-noise
>   front-ends.  Such front-ends generally don't tolerate higher input
> powers without damage--and +10dBm *IS* high
>   input power for a radio receiver.
>
> One may have gotten used to the relatively-insensitive inputs of
> laboratory spectrum analyzers, which often have
>   inputs that can tolerate considerably-higher power levels, but are
> insensitive at levels expected from direct
>   connection to an antenna.  But USRPs are designed for antenna
> connection.   If you want to use them as
>   a laboratory spectrum analyser, you'll need to use attenuators.
>
>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008fe9f70631a5a660
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Just to follow on. The BasicRx is +10 dBm. I&#39;ve =
been using that as a max to the BasicRx for quite a while without issue. Bu=
t the UBX-160 knowledge base indicates -15 dBm. I&#39;d assume if you&#39;r=
e using the UBX that you&#39;ll be using the configurable on-board amplific=
ation (up to 31.5 dB).</div><div dir=3D"auto"><div dir=3D"auto"><br></div><=
div dir=3D"auto"><a href=3D"https://kb.ettus.com/UBX">https://kb.ettus.com/=
UBX</a></div><br><br><div class=3D"gmail_quote gmail_quote_container" dir=
=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Mar 31, 2025, 8:59=
=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">=
patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 31/03/2025 11:51, zhou via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div style=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif;f=
ont-size:13px">
        <div dir=3D"ltr">Hi,</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">What is the max input signal
          power to RF ports in X310?=C2=A0 There is a spec in the below lin=
k:</div>
        <div dir=3D"ltr"><a href=3D"https://www.ettus.com/wp-content/upload=
s/2024/01/X300_X310_Spec_Sheet_2024-01-23.pdf" rel=3D"nofollow noreferrer" =
target=3D"_blank">https://www.ettus.com/wp-content/uploads/2024/01/X300_X31=
0_Spec_Sheet_2024-01-23.pdf</a></div>
        <div dir=3D"ltr"><span><span style=3D"color:rgb(0,0,0);font-family:=
Helvetica Neue,Helvetica,Arial,sans-serif">There
              are max output powers, but not input power.</span></span><br>
        </div>
        <div dir=3D"ltr">I am using UBX-160
          daughterboard.</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">In=C2=A0<a href=3D"https://kb.ettus.com/X300/X310_=
Getting_Started_Guides" rel=3D"nofollow noreferrer" target=3D"_blank">https=
://kb.ettus.com/X300/X310_Getting_Started_Guides</a>,
          it says that</div>
        <div dir=3D"ltr">&quot;<span><span style=3D"color:rgb(0,0,0);font-f=
amily:Lucida Sans Unicode,Lucida Grande,sans-serif;font-size:14px">Never
              apply more than -15 dBm of power into any RF input.</span></s=
pan>&quot;</div>
        <div><br>
        </div>
        <div dir=3D"ltr">ChatGpt says that &quot;<strong>UBX 40</strong>: <=
strong>+10 dBm</strong> (10 mW)&quot;</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">What is the max input signal
          power?</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">Thanks for any comments,</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">Zhou</div>
        <div><br>
        </div>
      </div>
    </blockquote>
    -15dBm is somewhat conservative, but if that&#39;s what the manufacture=
r
    recommends, I&#39;d go with that, rather than a<br>
    =C2=A0 hallucination produced by ChatGPT.<br>
    <br>
    The receivers on USRPs are generally designed to be connected to an
    antenna, and as such have sensitive, lower-noise<br>
    =C2=A0 front-ends.=C2=A0 Such front-ends generally don&#39;t tolerate h=
igher input
    powers without damage--and +10dBm *IS* high<br>
    =C2=A0 input power for a radio receiver.<br>
    <br>
    One may have gotten used to the relatively-insensitive inputs of
    laboratory spectrum analyzers, which often have<br>
    =C2=A0 inputs that can tolerate considerably-higher power levels, but a=
re
    insensitive at levels expected from direct<br>
    =C2=A0 connection to an antenna.=C2=A0 But USRPs are designed for anten=
na
    connection.=C2=A0=C2=A0 If you want to use them as<br>
    =C2=A0 a laboratory spectrum analyser, you&#39;ll need to use attenuato=
rs.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div style=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif;f=
ont-size:13px">
        <div><br>
        </div>
        <div dir=3D"ltr"><br>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div></div></div>

--0000000000008fe9f70631a5a660--

--===============2729616665028020606==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2729616665028020606==--
