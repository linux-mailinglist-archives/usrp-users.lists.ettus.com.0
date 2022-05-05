Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D8851CAB3
	for <lists+usrp-users@lfdr.de>; Thu,  5 May 2022 22:35:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D3D0D384D02
	for <lists+usrp-users@lfdr.de>; Thu,  5 May 2022 16:35:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651782940; bh=EWZIY6SciBkR967laV+KOXRVCUnioXlkFSyWzY7QOlE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=FdZRCzIfea0IMdfD8nxHsYmQ9IGNHOCwgKVO+CegYOZ/GwpST4szkp098S/AzYJR2
	 o8JCKcEgyNhIq3UZA5dP7zRIaG1lGgXc4AFj6bmZvOyTYgXdyP2iOOuxWLI7haBSmf
	 DD5P96Y3PH9Uke0GXLiNXf9OaoejuBJJV002I4TKNEWTLnOVxHKN/+tXz0abCu2nv+
	 aLVmg+d9eGOa0nPlN2hLSx+sZziSN7ZecIYtWNlTKZ5jReFLJLGZ1yCLcJzrf+6LQV
	 fZ9ZGzbsE+N8k4RfZG/gVNx8EVN+kcWNLqp+rPCK08DA0fffv+6CO6Ngg8SA4zoo79
	 F4vIK7SQbNMsQ==
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id F2735384B8A
	for <usrp-users@lists.ettus.com>; Thu,  5 May 2022 16:34:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hDVukNKm";
	dkim-atps=neutral
Received: by mail-qt1-f172.google.com with SMTP id x9so4075855qts.6
        for <usrp-users@lists.ettus.com>; Thu, 05 May 2022 13:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=RlC/GFJ4EgQlc3xg7J2M6+u6aea6kn5lDkIHzbstdU0=;
        b=hDVukNKmbuINDj9zfGziXEGEVbyIfbOERLDUJqZXdjCJ99Fhw792AH6sXNjuJSbfIf
         g4EzYZEWdaUSGcZv1CAv9eQAUhdVB1ikq6Z2FwcakjcJ+M95BOz/6GOE+V1kCgsR5qAA
         A3F4DT8zFgO5LS4ZhFjCWz+i9OELuwkODKQWNkfu1nimw1Rj3Yq8RXqsCkh37T4mA5ta
         wHSa0OlTn/+WEayJRwoGUOJBC8OidkIQMppT8rgl0swErsZ1YSXz/0oE+SHe6hF6/C78
         hRGDIDj0oVVjni0/48fIj0JB0z6HPEmY9oOpof/3b/X4ax6/tx3qKtGtruoEWJqQ6eSs
         Y60g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=RlC/GFJ4EgQlc3xg7J2M6+u6aea6kn5lDkIHzbstdU0=;
        b=6gekRFH+fQMtU8MPAwwA5qciclq4DX67ud0hAwvxsN4GeLfwk7uAfJZd2kZKFjjGGd
         3yAZ+A0Ip58qc2L3S83G54FjYmE62tF54TYNR4JkTblRmdxPH27ZSLz0m7hpbTbQeT0J
         IoE8DUPcZvu3LV2dWjjVBV2PPAk6MaCzTvegITJzxGeH+mRUikh1gAJ0fwq2sawLetX6
         cF+TJNyRNNFlim4zFN5wS/DJG9aBkuxOj0Z1+2du8tZRglUXAai/hP+sKlV5FbCNoO3J
         VdxllXqwKkBmMJbI+1yYBZOmJLueVTEPz9SWAojmF0iX/ib7cWeoZQLTja2CB+BLwoRI
         Dmxw==
X-Gm-Message-State: AOAM531XzzPufTxaSI5/AFJ0d+VanDmozjH5KbX80JDHARI4Hn2jXaPU
	nyykn8h16BgCtU2jPYVwvW8zt/zhrWE=
X-Google-Smtp-Source: ABdhPJy4hjZy1G2tWMkNKH8J08sT2SfmDd6PuOeAFfMGRmYdD9fxy/IL/g7wPFC1EPHKFIWkPSWudw==
X-Received: by 2002:a05:622a:6182:b0:2f1:e351:abcf with SMTP id hh2-20020a05622a618200b002f1e351abcfmr25365813qtb.321.1651782871004;
        Thu, 05 May 2022 13:34:31 -0700 (PDT)
Received: from [192.168.2.194] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id c14-20020ac8518e000000b002f39b99f694sm1389732qtn.46.2022.05.05.13.34.30
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 May 2022 13:34:30 -0700 (PDT)
Message-ID: <f27a12fa-070e-07e3-1a9b-c3bc5a02c361@gmail.com>
Date: Thu, 5 May 2022 16:34:29 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <a708bc85-d957-82a5-7556-cb030b973ef7@bath.edu>
 <79f66fd3-5361-0491-499f-2849b1b03867@gmail.com>
 <a5d91de8-097b-3911-98d3-845668f9e02f@bath.edu>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <a5d91de8-097b-3911-98d3-845668f9e02f@bath.edu>
Message-ID-Hash: EHCRV52EQDEP2XKHMAXOYITA7FITNXDM
X-Message-ID-Hash: EHCRV52EQDEP2XKHMAXOYITA7FITNXDM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 : setting different frequencies on different channels
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EHCRV52EQDEP2XKHMAXOYITA7FITNXDM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3745711840154159305=="

This is a multi-part message in MIME format.
--===============3745711840154159305==
Content-Type: multipart/alternative;
 boundary="------------JHVK58qZFWLfaTORwOG0Oz4L"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------JHVK58qZFWLfaTORwOG0Oz4L
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-05-05 16:07, Peter Featherstone wrote:
>
> Hi Marcus and thank you for your response.
>
> What about the B210? I'm getting similar behavior with this device=20
> too, i.e. I cannot set different frequencies on each channel.
>
> This document=20
> (https://kb.ettus.com/B200/B210/B200mini/B205mini#Frontend_Specificatio=
ns)=20
> says the following:
>
> "On the B210, both transmit and receive can be used in a MIMO=20
> configuration. For the MIMO case on the B210 only, both receive=20
> frontends share the RX LO, and both transmit frontends share the TX=20
> LO. Each LO is independently tunable between 50 MHz and 6 GHz and can=20
> be used with 1 or 2 channels
>
> Does this imply that in a non-MIMO setting, both RX channels can have=20
> their own LO and therefore tune to different frequencies?
>
NO, it's just awkwardly worded.

The E310 and B210 share the same AD9361 RF front-end chip, and there=20
really absolutely is only A SINGLE LO for each direction (TX and RX).


> Many thanks,
>
> Peter
>
>
> On 05/05/2022 16:31, Marcus D. Leech wrote:
>> On 2022-05-05 10:18, Peter Featherstone wrote:
>>> Hi all,
>>>
>>> Some help would be great.
>>>
>>> I have an E320 and would like to capture IQ samples on 2 different=20
>>> channels at different frequencies.
>>>
>>> Is this possible?
>> The short answer is "no" -- because there's only 1 RF LO for each of=20
>> TX and RX -- that's how the AD9361 chip
>> =C2=A0 does MIMO.
>>
>> The longer answer is that if your two frequencies are within the=20
>> analog bandwidth of the AD9361, you can do some
>> =C2=A0 DDC tricks to bring them both down to baseband before presentat=
ion=20
>> to the host.=C2=A0 In your case, this isn't possible, since
>> =C2=A0 the "split" is over 1GHz.
>>
>>
>>>
>>> When I run the following:
>>>
>>>
>>> usrp->set_rx_freq(2.1e9, 0);
>>>
>>> printf("Channel 0 freq %f\n", usrp->get_rx_freq(0));
>>>
>>> printf("Channel 1 freq %f\n", usrp->get_rx_freq(1));
>>>
>>> usrp->set_rx_freq(3.2e9, 1);
>>>
>>> printf("Channel 0 freq %f\n", usrp->get_rx_freq(0));
>>>
>>> printf("Channel 1 freq %f\n", usrp->get_rx_freq(1));
>>>
>>>
>>>
>>> I get:
>>>
>>>
>>>
>>> Channel 0 freq 2.1e9
>>>
>>> Channel 1 freq 2.1e9
>>>
>>> Channel 0 freq 3.2e9
>>>
>>> Channel 1 freq 3.2e9
>>>
>>>
>>> Do you have to configure the channels or something?
>>>
>>>
>>> Thanks,
>>>
>>> Pete
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------JHVK58qZFWLfaTORwOG0Oz4L
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-05-05 16:07, Peter Featherston=
e
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:a5d91de8-097b-3911-98d3-845668f9e02f@bath.edu">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi Marcus and thank you for your response.</p>
      <p>What about the B210? I'm getting similar behavior with this
        device too, i.e. I cannot set different frequencies on each
        channel.</p>
      <p>This document
        (<a class=3D"moz-txt-link-freetext"
href=3D"https://kb.ettus.com/B200/B210/B200mini/B205mini#Frontend_Specifi=
cations"
          moz-do-not-send=3D"true">https://kb.ettus.com/B200/B210/B200min=
i/B205mini#Frontend_Specifications</a>)
        says the following:</p>
      <p>"<span style=3D"color: rgb(0, 0, 0); font-family: &quot;Lucida
          Sans Unicode&quot;, &quot;Lucida Grande&quot;, sans-serif;
          font-size: 14px; font-style: normal; font-variant-ligatures:
          normal; font-variant-caps: normal; font-weight: 400;
          letter-spacing: normal; orphans: 2; text-align: start;
          text-indent: 0px; text-transform: none; white-space: normal;
          widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;
          background-color: rgb(255, 255, 255);
          text-decoration-thickness: initial; text-decoration-style:
          initial; text-decoration-color: initial; display: inline
          !important; float: none;">On the B210, both transmit and
          receive can be used in a MIMO configuration. For the MIMO case
          on the B210 only, both receive frontends share the RX LO, and
          both transmit frontends share the TX LO. Each LO is
          independently tunable between 50 MHz and 6 GHz and can be used
          with 1 or 2 channels</span></p>
      <div class=3D"moz-cite-prefix">
        <p>Does this imply that in a non-MIMO setting, both RX channels
          can have their own LO and therefore tune to different
          frequencies?</p>
      </div>
    </blockquote>
    NO, it's just awkwardly worded.<br>
    <br>
    The E310 and B210 share the same AD9361 RF front-end chip, and there
    really absolutely is only A SINGLE LO for each direction (TX and
    RX).=C2=A0 <br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:a5d91de8-097b-3911-98d3-845668f9e02f@bath.edu">
      <div class=3D"moz-cite-prefix">
        <p>Many thanks,</p>
        <p>Peter</p>
        <p><br>
        </p>
      </div>
      <div class=3D"moz-cite-prefix">On 05/05/2022 16:31, Marcus D. Leech
        wrote:<br>
      </div>
      <blockquote type=3D"cite"
        cite=3D"mid:79f66fd3-5361-0491-499f-2849b1b03867@gmail.com">On
        2022-05-05 10:18, Peter Featherstone wrote: <br>
        <blockquote type=3D"cite">Hi all, <br>
          <br>
          Some help would be great. <br>
          <br>
          I have an E320 and would like to capture IQ samples on 2
          different channels at different frequencies. <br>
          <br>
          Is this possible? <br>
        </blockquote>
        The short answer is "no" -- because there's only 1 RF LO for
        each of TX and RX -- that's how the AD9361 chip <br>
        =C2=A0 does MIMO. <br>
        <br>
        The longer answer is that if your two frequencies are within the
        analog bandwidth of the AD9361, you can do some <br>
        =C2=A0 DDC tricks to bring them both down to baseband before
        presentation to the host.=C2=A0 In your case, this isn't possible=
,
        since <br>
        =C2=A0 the "split" is over 1GHz. <br>
        <br>
        <br>
        <blockquote type=3D"cite"> <br>
          When I run the following: <br>
          <br>
          <br>
          usrp-&gt;set_rx_freq(2.1e9, 0); <br>
          <br>
          printf("Channel 0 freq %f\n", usrp-&gt;get_rx_freq(0)); <br>
          <br>
          printf("Channel 1 freq %f\n", usrp-&gt;get_rx_freq(1)); <br>
          <br>
          usrp-&gt;set_rx_freq(3.2e9, 1); <br>
          <br>
          printf("Channel 0 freq %f\n", usrp-&gt;get_rx_freq(0)); <br>
          <br>
          printf("Channel 1 freq %f\n", usrp-&gt;get_rx_freq(1)); <br>
          <br>
          <br>
          <br>
          I get: <br>
          <br>
          <br>
          <br>
          Channel 0 freq 2.1e9 <br>
          <br>
          Channel 1 freq 2.1e9 <br>
          <br>
          Channel 0 freq 3.2e9 <br>
          <br>
          Channel 1 freq 3.2e9 <br>
          <br>
          <br>
          Do you have to configure the channels or something? <br>
          <br>
          <br>
          Thanks, <br>
          <br>
          Pete <br>
          _______________________________________________ <br>
          USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated
            moz-txt-link-freetext"
            href=3D"mailto:usrp-users@lists.ettus.com"
            moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a> <br>
          To unsubscribe send an email to <a
            class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            moz-do-not-send=3D"true">usrp-users-leave@lists.ettus.com</a>
          <br>
        </blockquote>
        _______________________________________________ <br>
        USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated
          moz-txt-link-freetext"
          href=3D"mailto:usrp-users@lists.ettus.com"
          moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a> <br>
        To unsubscribe send an email to <a
          class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
          href=3D"mailto:usrp-users-leave@lists.ettus.com"
          moz-do-not-send=3D"true">usrp-users-leave@lists.ettus.com</a> <=
br>
      </blockquote>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------JHVK58qZFWLfaTORwOG0Oz4L--

--===============3745711840154159305==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3745711840154159305==--
