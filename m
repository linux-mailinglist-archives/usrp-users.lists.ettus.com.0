Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 159CF43234D
	for <lists+usrp-users@lfdr.de>; Mon, 18 Oct 2021 17:49:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 21EE23845BA
	for <lists+usrp-users@lfdr.de>; Mon, 18 Oct 2021 11:49:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="diKGCScj";
	dkim-atps=neutral
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 252943841BA
	for <usrp-users@lists.ettus.com>; Mon, 18 Oct 2021 11:48:36 -0400 (EDT)
Received: by mail-qv1-f48.google.com with SMTP id v10so10487654qvb.10
        for <usrp-users@lists.ettus.com>; Mon, 18 Oct 2021 08:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=6xwMRgf02NqT9H1HGwJrQejVvS8yj66s8SP5Os3zvMY=;
        b=diKGCScjYZn3CrjBcEWgWIwtn351NEl3r+c6wcZwQ5cz/plAXhC1AokO7FUR7kNLbf
         9L+xF3M5efJl50D9bgF5XUFb969z+Vg6eAWkyNYikVngJB3edzqOpfWLxa67RoL5XUTV
         7z2E11xvCkZVUQSpyfmCrnM888hjvfWcNwJEBCdsQm8zipQ/EaFbw6MiKJ++JK9tMM49
         wZ2GhcF7+iddnga2k4AvBP5dA25BeueivgntVe3qK63+t/fb2PH+ilOinOXuLkC9s/tF
         e8ItnX3HiOX0Q0jfINwnVb6dOv57dVNBfw/ANmbWDX9Tc30StX0Ge4nx7e7XMHYaXrZ+
         0Ymw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=6xwMRgf02NqT9H1HGwJrQejVvS8yj66s8SP5Os3zvMY=;
        b=X6iQRIcfFNhnx2s4p9tabWlkUE4GuK84hZta+OOYMBntOoheT2U8wZbro3YlxiI3Q4
         Z2Nx8vdCUv0YOlupSsfC6UHUT9+AmTdNm3EtskeNT1XH/Y+d6sYR3gD5ZYEU33UVMrHT
         Ye4oNhAtSsvk89UbYZg0N6TW/2jTKqz3ZcTmaigVzYLnovHSr1Il8vHOQej2i1462T07
         EVku0syU9i5ZE3A7yr9nQETbk/8/eFDacBZEQcfRnPSStvTAzjX+OVUetzYJvL9u67Z6
         CZQx14L7kyiOpjLddULvQqPGg3DMBvIklF+5eWUMhfs8o60aco6zdxkAI9QWlzxUCl6S
         /Xrw==
X-Gm-Message-State: AOAM533Rj0VTeQHHFQ4D55Mpld8LiRWt7mv7wzq/56mpg3QMwRu/aWbd
	noGC29u8KqlrpHCMetn233+XJYG6K84=
X-Google-Smtp-Source: ABdhPJxNSHwbc1eIP2BI1cGR5KuYZKj0v3DW70IHsZTccDSSOfSvHDRUNikDv0qV8EM9flv8/LEyOQ==
X-Received: by 2002:a05:6214:1222:: with SMTP id p2mr25576789qvv.23.1634572116289;
        Mon, 18 Oct 2021 08:48:36 -0700 (PDT)
Received: from [192.168.2.243] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id b127sm6638049qkg.42.2021.10.18.08.48.35
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Oct 2021 08:48:35 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CAGeA34H5uj6pcFV39dNJBpSksVqq_jOYypBYMvBQhzJmX+Kyzw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <1dd99b19-0a66-29ef-0cee-a0ae45167443@gmail.com>
Date: Mon, 18 Oct 2021 11:48:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAGeA34H5uj6pcFV39dNJBpSksVqq_jOYypBYMvBQhzJmX+Kyzw@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: QZ4PXJWFUS3VNFRKACYPGZXML5FCPYQ4
X-Message-ID-Hash: QZ4PXJWFUS3VNFRKACYPGZXML5FCPYQ4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Can't communicate between USRP N310 and B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QZ4PXJWFUS3VNFRKACYPGZXML5FCPYQ4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2947710169976361540=="

This is a multi-part message in MIME format.
--===============2947710169976361540==
Content-Type: multipart/alternative;
 boundary="------------E783CDBDF8A1DD0D326ECB06"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------E783CDBDF8A1DD0D326ECB06
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-10-18 12:40 a.m., Shamil Prematunga wrote:
> Hi All,
>
> I am a research engineer in Dialog-University of Moratuwa Research Lab=20
> Sri Lanka who is new to USRP devices. I am currently working on an OAI=20
> setup with N310 as a gNB and B210 as a UE.
>
> When the setup is running I wasn't able to make proper communication=20
> in between SDRs even over the air or through cables.
>
> I tested=C2=A0using GNURadio and B210 working as a spectrum analyzer to=
=20
> capture signals which are transmitted by the N310. It shows small=20
> fluctuations around the center frequency when N310 is up and running.
>
> Can someone who has experience with OAI and USRPs please help me to=20
> figure out the=C2=A0problem.
>
> Thanks in advance.
>
> Best Regards,
> Shamil Prematunga
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
You haven't given us much to go on here--like what you mean by "small=20
fluctuations".

My suspicion is that you're just running into the fact that at the very=20
center of the spectrum is the DC component, and direct-conversion radios=20
have
 =C2=A0 a DC-offset compensator that can tend to alter signals right in t=
he=20
middle of the spectrum.


The cure is usually to use offset tuning:

https://files.ettus.com/manual/structuhd_1_1tune__request__t.html#a292194=
827377ad0cef865b8b433b3ecd

To shift the DC offset component outside or to the edge of your passband.



--------------E783CDBDF8A1DD0D326ECB06
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-10-18 12:40 a.m., Shamil
      Prematunga wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAGeA34H5uj6pcFV39dNJBpSksVqq_jOYypBYMvBQhzJmX+Kyzw@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi All,
        <div><br>
        </div>
        <div>I am a research engineer in Dialog-University of Moratuwa
          Research Lab Sri Lanka who is new to USRP devices. I am
          currently working on an OAI setup with N310 as a gNB and B210
          as a UE.=C2=A0</div>
        <div><br>
        </div>
        <div>When the setup is running I wasn't able to make proper
          communication in between SDRs even over the air or through
          cables.=C2=A0</div>
        <div><br>
        </div>
        <div>I tested=C2=A0using GNURadio and B210 working as a spectrum
          analyzer to capture signals which are transmitted by the N310.
          It shows small fluctuations around the center frequency when
          N310 is up and running.=C2=A0</div>
        <div><br>
        </div>
        <div>Can someone who has experience with OAI and USRPs please
          help me to figure out the=C2=A0problem.</div>
        <div><br>
        </div>
        <div>Thanks in advance.=C2=A0</div>
        <div><br>
        </div>
        <div>Best Regards,</div>
        <div>Shamil Prematunga=C2=A0</div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    You haven't given us much to go on here--like what you mean by
    "small fluctuations".<br>
    <br>
    My suspicion is that you're just running into the fact that at the
    very center of the spectrum is the DC component, and
    direct-conversion radios have<br>
    =C2=A0 a DC-offset compensator that can tend to alter signals right i=
n
    the middle of the spectrum.<br>
    <br>
    <br>
    The cure is usually to use offset tuning:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/manual=
/structuhd_1_1tune__request__t.html#a292194827377ad0cef865b8b433b3ecd">ht=
tps://files.ettus.com/manual/structuhd_1_1tune__request__t.html#a29219482=
7377ad0cef865b8b433b3ecd</a><br>
    <br>
    To shift the DC offset component outside or to the edge of your
    passband.<br>
    <br>
    <br>
  </body>
</html>

--------------E783CDBDF8A1DD0D326ECB06--

--===============2947710169976361540==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2947710169976361540==--
