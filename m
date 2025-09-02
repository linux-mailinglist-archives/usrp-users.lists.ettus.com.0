Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 49778B3FEEF
	for <lists+usrp-users@lfdr.de>; Tue,  2 Sep 2025 14:01:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2AAAC3857B6
	for <lists+usrp-users@lfdr.de>; Tue,  2 Sep 2025 08:01:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1756814514; bh=1qEYqame5emywJg2B6W5O572WonnlXEsSzIeDrZOpbI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=nErSOh3jBvaBNqRLIG2n31JrSSuYCwsvZ+1ygXorKuSYGFPGhZVT4+/7zYFcFrHXy
	 brpPRSIJ37pBj1T/OKZVoHBkgma+VBXcIYchgimAH4oUyh8lyplV5AGmlO8P/Ln1dS
	 WZsZFhidPewt1buRV17bvE5mef3XRKqASiAzUSkefcaDOuNhkJbHK8uPgyd0AWGbj+
	 iLcrbjxWtsu6gcZh9otzcU30jT+rcNXHit4LxTNvneV/vjyrAfi+vBv1xIMo2Isx9a
	 PLqma3LAgu9qyRMTPxSYgzzraAAWu7p9rao5PzpPUCUwvVb/6l+UEgOMUdLWoixyDp
	 Gu4jBMLKzruVg==
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id A58413855F8
	for <usrp-users@lists.ettus.com>; Tue,  2 Sep 2025 08:01:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="A+M7W2+a";
	dkim-atps=neutral
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-4b32bbefa14so27563451cf.1
        for <usrp-users@lists.ettus.com>; Tue, 02 Sep 2025 05:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756814496; x=1757419296; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Av81jOX8EO44wEEoRvpMToW6ovA4AU9/Y3xQ4UTmiiY=;
        b=A+M7W2+aQ8tkpWqaKpexDtPJSjDvLfZq32MGLFtEoLa3Tdh0ozKnJp9DHE3xoYl0tV
         AWoZuzUpOk01PnzGylP1tSL43FXf5/I/fb5mRCk6bpwYe3Ck+vElAKaLhekYRBvPhm25
         e3A2ZxHwqcM73NqGeVTgmX/uiQk7ForoOn6ztsAM3zIkrkddY0mVqka24fIGKudvpMpX
         /SUHu8SNyVzrfbj20VdaPL0s1NER82oHfWErwAlVVJruoPxRRkNm80CQup+SIzz8gtbp
         hOxU6IAABjExLCL5L6dS1d83OO8xn7hjUTjko5HlBmShNkXcpOP9P06izSAbVcFu3qe9
         Ha5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756814496; x=1757419296;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Av81jOX8EO44wEEoRvpMToW6ovA4AU9/Y3xQ4UTmiiY=;
        b=hwFzOmyJpsoIDcN1oQk3if8WY9FD2BVOQLELBGtVBlT/MYfW7oaywPVNl/nFui1qXJ
         DnpteC8TJoydGXb1RslIZSJfX4LCZCf5Gow0m4+XKDiwoA+h9BmsqHsDNMj7l4EFIdWf
         Lu5n9b89sE9ffJwalFLnsJ/kvN9wg165TpH9kf/dgkKfPnS2pQyxO40W6sCK+qXLKt7a
         I7JQqVIOkCWDLd8XRnqjOzLi7bF4KRzGaQMH9a7VCa1M9dL2lrqrOBqzoABJ3ixOm7RB
         mDVF7nMuoOhOcIgDTwg7gkLVmRuKTk13vZWu4NeVIz+Xpwy43VDI13ZOWJpHcU7PGeUe
         5upg==
X-Gm-Message-State: AOJu0Yx8HPOz78AjMYfOfyR2K1Fq5BSiUhEY7hbDoaETI2MjrZFnTk/9
	XNCad3zJUlivHCMlExQkgOhs6s+ihYWuFKqTRy1pVI436XEUF6bLCsHuumaaxA==
X-Gm-Gg: ASbGncs6d4sAm722n3iuRns3zCh7ndFmo3ALGJIU7zd1R8PbZ/2yXSeHF9casHZtr6i
	wTS0lFk53nY1m7AMPSU8j2CRTX6Na47Q5G0oxwAJTwdM5siYazY0QH85qI24Y9G0hqPvVSTFztn
	knnwzV2YxIeabfgs+BPPR9IiqUqi6YWJnxhe/SBulc9jcomTtfTvInZg17MLC+VXMr1oMAgBtOE
	3PqFiVyh4S34eSrQRf9t5Mk+3Zw1bkpas/8xPuM5Qo6CSeRahmE2x5fIbsMsJOIL9mVj4LjI9mm
	+mQuvcCy7jjNWPewxrRghMpfrGuEkSiQwmy5Eays/7pMlch49n3ZLqRJH/r5x5ru1ldZkg+2uN4
	y07rl6dK5meh8z9WkZAV0somV6BRl91mbDKE7qbi08qA923wM+d6c
X-Google-Smtp-Source: AGHT+IEdrTicJO7lcYKRPq0/AIw0cfxAa26VWEI1ICJNfsyrGri/p1v+NLndqY+F9WTogQhPiziSXA==
X-Received: by 2002:a05:622a:41:b0:4b3:4f45:8a5 with SMTP id d75a77b69052e-4b34f4513f2mr9729121cf.4.1756814494692;
        Tue, 02 Sep 2025 05:01:34 -0700 (PDT)
Received: from [192.168.2.208] ([174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-4b3461e04f5sm11034351cf.19.2025.09.02.05.01.33
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 05:01:33 -0700 (PDT)
Message-ID: <fca57014-81ba-4284-b3ea-f9a61d1f123e@gmail.com>
Date: Tue, 2 Sep 2025 08:01:20 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <CAPP35V_R40Cfwn=jRhO60mc7Rf=3v1J3JtW2sPVDhx=NF9S9JQ@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAPP35V_R40Cfwn=jRhO60mc7Rf=3v1J3JtW2sPVDhx=NF9S9JQ@mail.gmail.com>
Message-ID-Hash: YSROYQS7FJUVUOPAORPKFBOYLQ6IYLKM
X-Message-ID-Hash: YSROYQS7FJUVUOPAORPKFBOYLQ6IYLKM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?Re=3A_Visualization_of_USRP_Signals_in_C++_Application_=E2=80=93_Best_Practices=3F?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YSROYQS7FJUVUOPAORPKFBOYLQ6IYLKM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5092198366522022823=="

This is a multi-part message in MIME format.
--===============5092198366522022823==
Content-Type: multipart/alternative;
 boundary="------------iG3QjvCXMTroy0pGwzMx8MXk"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------iG3QjvCXMTroy0pGwzMx8MXk
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2025-09-02 03:33, Ravi Paswan via USRP-users wrote:
>
> Dear USRP Community,
>
> I=E2=80=99m currently working on a project using a *single USRP device*=
 and=20
> programming it in *C++ via the UHD API*. My goal is to *receive=20
> baseband samples and visualize them* (time domain, spectrum, etc.) in=20
> real time or near-real time.
>
> I understand that UHD allows only one application to access the USRP=20
> device at a time, so running a separate Python/GNU Radio application=20
> for visualization concurrently is not an option for me.
>
> I=E2=80=99d appreciate any advice or best practices on the following:
>
> 1.
>
>     *What are the recommended approaches for visualizing signals
>     directly within a C++ application* that interacts with the USRP?
>
> 2.
>
>     Has anyone successfully used C++ GUI libraries like *Qt
>     (QCustomPlot/Qwt)* or *Dear ImGui + ImPlot* for real-time signal
>     plotting?
>
> 3.
>
>     Are there any examples or open-source projects demonstrating
>     signal acquisition from UHD and real-time visualization in C++?
>
> 4.
>
>     Would it be better to log the data to disk in C++ and visualize it
>     separately post-capture (e.g., in Python), especially for debugging=
?
>
> Any insights, shared experiences, or example code would be greatly=20
> appreciated.
>
> Best regards,
> *Ravi Paswan*
>
>
This is all very much the domain of Gnu Radio, which you should=20
definitely look into.


--------------iG3QjvCXMTroy0pGwzMx8MXk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2025-09-02 03:33, Ravi Paswan via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAPP35V_R40Cfwn=3DjRhO60mc7Rf=3D3v1J3JtW2sPVDhx=3DNF9S9JQ@mai=
l.gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <p>Dear USRP Community,</p>
        <p>I=E2=80=99m currently working on a project using a <strong>sin=
gle
            USRP device</strong> and programming it in <strong>C++ via
            the UHD API</strong>. My goal is to <strong>receive
            baseband samples and visualize them</strong> (time domain,
          spectrum, etc.) in real time or near-real time.</p>
        <p>I understand that UHD allows only one application to access
          the USRP device at a time, so running a separate Python/GNU
          Radio application for visualization concurrently is not an
          option for me.</p>
        <p>I=E2=80=99d appreciate any advice or best practices on the fol=
lowing:</p>
        <ol>
          <li>
            <p><strong>What are the recommended approaches for
                visualizing signals directly within a C++ application</st=
rong>
              that interacts with the USRP?</p>
          </li>
          <li>
            <p>Has anyone successfully used C++ GUI libraries like <stron=
g>Qt
                (QCustomPlot/Qwt)</strong> or <strong>Dear ImGui +
                ImPlot</strong> for real-time signal plotting?</p>
          </li>
          <li>
            <p>Are there any examples or open-source projects
              demonstrating signal acquisition from UHD and real-time
              visualization in C++?</p>
          </li>
          <li>
            <p>Would it be better to log the data to disk in C++ and
              visualize it separately post-capture (e.g., in Python),
              especially for debugging?</p>
          </li>
        </ol>
        <p>Any insights, shared experiences, or example code would be
          greatly appreciated.</p>
        <p>Best regards,<br>
          <b>Ravi Paswan</b></p>
      </div>
      <br>
    </blockquote>
    This is all very much the domain of Gnu Radio, which you should
    definitely look into.<br>
    <br>
    <br>
  </body>
</html>

--------------iG3QjvCXMTroy0pGwzMx8MXk--

--===============5092198366522022823==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5092198366522022823==--
