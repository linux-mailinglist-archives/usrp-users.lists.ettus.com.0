Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 57656960106
	for <lists+usrp-users@lfdr.de>; Tue, 27 Aug 2024 07:24:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7D28D3853CC
	for <lists+usrp-users@lfdr.de>; Tue, 27 Aug 2024 01:24:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724736275; bh=kmz1/HXVYiCipBBpNRdqI4C5KjnO60XnXgI4enP9DIc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=DmDeecuAR/NdCbVqo9wsjCv5ei9UHqt1xqP9VuAGhQC/ERFyxXMUkffNNaG6erMpQ
	 5Wd+hFHNEeLVpw6t/CEXa982z8BQo2nIYE1HEwMkrhfceqJlkdrgO7DjZa9EMuG6ph
	 kBYDk75vK4FMkgjsVvthwEY2NejU4hRYAdHgYezE5aMv65ltyddCcugLyWaavLrtQ1
	 A/KLfWoRNZsvYPo0llupb7zWamsU0wRGbC32xWcTX5pIQlrJ+1fnDVjQN/d0bZlPd5
	 A44ObtoPonPbfTRjnthRJu5RthCxhsTLtQ1EmYmuV35y9UflKqeH9MBB/p8dT9Z1Sh
	 UQ3C9Tsyh4+Sw==
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 14D0E385155
	for <usrp-users@lists.ettus.com>; Tue, 27 Aug 2024 01:23:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="heekxfFk";
	dkim-atps=neutral
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-7a1d3e93cceso569974585a.1
        for <usrp-users@lists.ettus.com>; Mon, 26 Aug 2024 22:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724736230; x=1725341030; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d50ij5WyOTJ/j5tVBBlYitmUYWthSKOAU/tC8ZH1jSs=;
        b=heekxfFkQMr3zIgT9QQAgPhDNYI1qLWhKxQFpMCKnZ9IBb5X9zQ0w/I/26+0ImyzVf
         rCq3lmHc2E0okW6RPMpJ7ut3UigOAgphcel2dgIa+FgsDNXC6AoCv+krx1h+nEEwCCGz
         Q3jjXayeQxJR4HS7RLKHdIBjrXfMbY7C6DZgSfjZi+18a9kDzRDPy8Ga97Fr3izx7pL1
         hHFFbCd+e90bLyHwFu8kDZAo3oScz1wZjZ9T7Aj95tiDi/bk9o3QydI8ffDFM4win8z4
         QOV/aaAzza5P/bd3Yfw4GEXDgBMXeDQpzLlJXu4so921NBNzC/ZacIMnlM3ie/f22Ydn
         8BpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724736230; x=1725341030;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=d50ij5WyOTJ/j5tVBBlYitmUYWthSKOAU/tC8ZH1jSs=;
        b=m3/1cnaqi94JzVKUKL3/mTjnRE+JMiU5JTC36gUitqgL/lqRJbVFKse2JopElsEe3l
         xRKbrkRjmd+2scC784retL9stgLTy05c3PVcyQyDNAD7LV835dHGoDzqZFzkLc7CsNyA
         3fn/DvwWLiDA8YsTmLbBdwZEeEmZWRFXLMda6OWLbq/WE3kwFQ+zhNX/X3/WcY3OFqHh
         dZlUql2XGX8k6+RFcJbK6xsv0dr0Yo+nHAcXXUPSWdPu0ULhcKo3llYZcGw1kh/cetny
         U4NvpobVOoI9hhnupeaajjPrFYCOffoX70pfo0hthuMyP1rX0bJxaDeMkJtQgO4S0IuO
         pdRw==
X-Gm-Message-State: AOJu0Ywj2YgfMYD8271VsRXLsisGZeinVvd7ly1Iw9N75qtxqGIG/eoO
	H5wiB5xjZJrbeTDvAS+YfOa27/0f33qs7e9weX1eRmApWFOlItIpavfWow==
X-Google-Smtp-Source: AGHT+IGGlj6zGVWoWujqrmDj8DLd9g/KukC/Z75wcIEJGroS8UaJtg2PdBxQ66y7eZw3KPulOovnBw==
X-Received: by 2002:a05:620a:448d:b0:79f:741:5d4f with SMTP id af79cd13be357-7a7e4c258f5mr385822285a.3.1724736229982;
        Mon, 26 Aug 2024 22:23:49 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7a7cb0579d7sm366785285a.47.2024.08.26.22.23.49
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2024 22:23:49 -0700 (PDT)
Message-ID: <0753e55b-d3d0-4e39-b6de-0f2d2dd117bd@gmail.com>
Date: Tue, 27 Aug 2024 01:23:39 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <b7EDp_Z-OGLk51ibwQutMTVO7aVrweoUubIOqX594P7xDHOpwd6I31RtEuiCTB3DMjFLfdkKR0dLqBIS1UGsN8df_iSefI5zIAhjCxTWVUY=@protonmail.com>
 <CAB__hTSWmo4jBMz7PiLw=uMzR56RaNTqj_PZo3pk6Oxt9fsGUQ@mail.gmail.com>
 <524a890b-6dea-4526-aef3-3dfbed714a20@gmail.com>
 <CAB__hTTO=N08nac2wwg9H4X6X1KWufAr+8jm5xXjd0QXnsiLow@mail.gmail.com>
 <ZzKYZGhnR2PvIUOunRGDW3GffGey_JjDV2v-c_tCLY9R66l3Yt-R4dt-wV9uzw5PYEbIEYAPGndZjkFQCRw_cRP-j8MUC7jxZ7-2ak2MNto=@protonmail.com>
 <a1qmoBKs9eLCKKwZtGf-ci8CsH-LGueBoujZqhPdx_7HoL6tnTRvZjmJH2rdE-s4sJ4o2syphskB0krjHU-0VMeZ48YW4RlUTRNoZyAfl_Y=@protonmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <a1qmoBKs9eLCKKwZtGf-ci8CsH-LGueBoujZqhPdx_7HoL6tnTRvZjmJH2rdE-s4sJ4o2syphskB0krjHU-0VMeZ48YW4RlUTRNoZyAfl_Y=@protonmail.com>
Message-ID-Hash: 4THGAI6P3PKI55TJ6OR3F3H54CCUGAIJ
X-Message-ID-Hash: 4THGAI6P3PKI55TJ6OR3F3H54CCUGAIJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Assistance with RFNoC and TwinRX Configuration in Custom FPGA Image
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4THGAI6P3PKI55TJ6OR3F3H54CCUGAIJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3240238366920988676=="

This is a multi-part message in MIME format.
--===============3240238366920988676==
Content-Type: multipart/alternative;
 boundary="------------OExqFzzDRi34TVIKYdcU0xOf"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------OExqFzzDRi34TVIKYdcU0xOf
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 27/08/2024 01:16, Olo via USRP-users wrote:
>
> I have an additional question related to my current project involving=20
> RFNoC. Specifically, I need to implement as many narrowband channels=20
> (DDC) as possible to record various parts of the spectrum as required.
>
> I=E2=80=99m wondering if it would be more efficient to handle this thro=
ugh=20
> RFNoC or directly on a GPU? Additionally, how many narrowband channels=20
> of specific bandwidths could I implement using RFNoC, considering I=20
> primarily intend to store (record) the data into memory? I have a=20
> clear understanding of the memory and network interface requirements,=20
> but I am uncertain about the implications for CPU usage and RAM.
>
> Could you provide some guidance on this aspect?
>
My guess is that you wouldn't be able to create dozens of DDCs, due to=20
resource constraints in the FPGA, but adding a handful
 =C2=A0 more might not be that big a deal.

But I've never done this, so, just a roughly-educated guess.



> Olo.
>
> On Monday, August 26th, 2024 at 7:13 PM, Olo via USRP-users=20
> <usrp-users@lists.ettus.com> wrote:
>> Thank you for your detailed responses to my previous questions. I=20
>> appreciate the information provided about the limitations and=20
>> potential issues related to FFT size and TwinRX configuration.
>>
>> However, I noticed that there was no feedback regarding the YAML file=20
>> I attached in my original email. Could you please review it and let=20
>> me know if the configuration I've set up is correct?
>>
>> Additionally, based on your recommendations, I plan to use a window=20
>> function (Window block) with a size of 1024, along with an FFT block=20
>> of the same size for the scanner (sweep spectrum) functionality.=20
>> Would this approach be correct given the current limitations and your=20
>> suggestions?
>>
>> Your confirmation on these points would be invaluable to ensure that=20
>> I am on the right track with my project.
>>
>> Thank you once again for your time and assistance. I look forward to=20
>> your response.
>>
>> Best regards,
>> Olo.
>> On Monday, August 26th, 2024 at 18:04, Rob Kossler via USRP-users=20
>> <usrp-users@lists.ettus.com> wrote:
>>>
>>>
>>> On Mon, Aug 26, 2024 at 10:24=E2=80=AFAM Marcus D. Leech=20
>>> <patchvonbraun@gmail.com> wrote:
>>>
>>>     On 26/08/2024 10:21, Rob Kossler via USRP-users wrote:
>>>>     Hi Olo,
>>>>     On one point regarding an FFT length of 8192, there is likely
>>>>     an issue with using the Ettus FFT block. In the past (I haven't
>>>>     checked recently), this block was limited to a maximum FFT size
>>>>     of 1024 because the entire FFT had to fit in one packet where
>>>>     the maximum packet payload was about 2000 samples. It is
>>>>     possible to use larger FFTs, but this requires some custom code
>>>>     that divorces the FFT size from the packet size.
>>>>     Rob
>>>     My understanding is that in recent RFNoC, the limit has been
>>>     raised to 2048:
>>>
>>>     https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1fft__block__c=
ontrol.html
>>>
>>> The xci file=20
>>> <https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/ip/a=
xi_fft/axi_fft.xci>=20
>>> still shows a transform length of 1024. Also, I think that the X300=20
>>> MTU size is 10 which implies 2^10=3D1024 x 64bit is the max payload.=20
>>> This implies 2048 32-bit words in the payload. But, because of a few=20
>>> bytes of header, it is not possible to use an FFT of length 2048=20
>>> unless the FFT length is divorced from the packet length.
>>> Rob
>>>
>>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------OExqFzzDRi34TVIKYdcU0xOf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 27/08/2024 01:16, Olo via USRP-user=
s
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:a1qmoBKs9eLCKKwZtGf-ci8CsH-LGueBoujZqhPdx_7HoL6tnTRvZjmJH2rdE=
-s4sJ4o2syphskB0krjHU-0VMeZ48YW4RlUTRNoZyAfl_Y=3D@protonmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>I have an additional question related to my current project
        involving RFNoC. Specifically, I need to implement as many
        narrowband channels (DDC) as possible to record various parts of
        the spectrum as required.</p>
      <p>I=E2=80=99m wondering if it would be more efficient to handle th=
is
        through RFNoC or directly on a GPU? Additionally, how many
        narrowband channels of specific bandwidths could I implement
        using RFNoC, considering I primarily intend to store (record)
        the data into memory? I have a clear understanding of the memory
        and network interface requirements, but I am uncertain about the
        implications for CPU usage and RAM.</p>
      <p>Could you provide some guidance on this aspect?</p>
    </blockquote>
    My guess is that you wouldn't be able to create dozens of DDCs, due
    to resource constraints in the FPGA, but adding a handful<br>
    =C2=A0 more might not be that big a deal.<br>
    <br>
    But I've never done this, so, just a roughly-educated guess.<br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:a1qmoBKs9eLCKKwZtGf-ci8CsH-LGueBoujZqhPdx_7HoL6tnTRvZjmJH2rdE=
-s4sJ4o2syphskB0krjHU-0VMeZ48YW4RlUTRNoZyAfl_Y=3D@protonmail.com">
      <div
style=3D"font-family: Arial, sans-serif; font-size: 14px; color: rgb(0, 0=
, 0); background-color: rgb(255, 255, 255);">Olo.<br>
      </div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"><br=
>
      </div>
      <div class=3D"protonmail_quote"> On Monday, August 26th, 2024 at
        7:13 PM, Olo via USRP-users <a class=3D"moz-txt-link-rfc2396E" hr=
ef=3D"mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&g=
t;</a>
        wrote:<br>
        <blockquote class=3D"protonmail_quote" type=3D"cite">
          <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"=
>Thank
            you for your detailed responses to my previous questions. I
            appreciate the information provided about the limitations
            and potential issues related to FFT size and TwinRX
            configuration.</div>
          <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"=
><br>
          </div>
          <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"=
>However,
            I noticed that there was no feedback regarding the YAML file
            I attached in my original email. Could you please review it
            and let me know if the configuration I've set up is correct?<=
/div>
          <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"=
><br>
          </div>
          <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"=
>Additionally,
            based on your recommendations, I plan to use a window
            function (Window block) with a size of 1024, along with an
            FFT block of the same size for the scanner (sweep spectrum)
            functionality. Would this approach be correct given the
            current limitations and your suggestions?</div>
          <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"=
><br>
          </div>
          <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"=
>Your
            confirmation on these points would be invaluable to ensure
            that I am on the right track with my project.</div>
          <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"=
><br>
          </div>
          <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"=
>Thank
            you once again for your time and assistance. I look forward
            to your response.</div>
          <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"=
><br>
          </div>
          <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"=
>Best
            regards,</div>
          <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"=
>Olo.</div>
          <div class=3D"protonmail_quote"> On Monday, August 26th, 2024 a=
t
            18:04, Rob Kossler via USRP-users
            <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@=
lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a> wrote:<br>
            <blockquote type=3D"cite" class=3D"protonmail_quote">
              <div dir=3D"ltr">
                <div dir=3D"ltr"><br>
                </div>
                <br>
                <div class=3D"gmail_quote">
                  <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 26, 2=
024
                    at 10:24=E2=80=AFAM Marcus D. Leech &lt;<a
                      rel=3D"noreferrer nofollow noopener"
                      href=3D"mailto:patchvonbraun@gmail.com"
                      moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">patchvonbraun@gmail=
.com</a>&gt;
                    wrote:<br>
                  </div>
                  <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                    <div>
                      <div>On 26/08/2024 10:21, Rob Kossler via
                        USRP-users wrote:<br>
                      </div>
                      <blockquote type=3D"cite">
                        <div dir=3D"ltr">
                          <div dir=3D"ltr">
                            <div>Hi Olo,</div>
                            <div>On one point regarding an FFT length of
                              8192, there is likely an issue with using
                              the Ettus FFT block. In the past (I
                              haven't checked recently), this block was
                              limited to a maximum FFT size of 1024
                              because the entire FFT had to fit in one
                              packet where the maximum packet payload
                              was about 2000 samples. It is possible to
                              use larger FFTs, but this requires some
                              custom code that divorces the FFT size
                              from the packet size.</div>
                            <div>Rob<br>
                            </div>
                          </div>
                        </div>
                      </blockquote>
                      My understanding is that in recent RFNoC, the
                      limit has been raised to 2048:<br>
                      <br>
                      <a rel=3D"noreferrer nofollow noopener"
href=3D"https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1fft__block__c=
ontrol.html"
                        target=3D"_blank" moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">https://files.ett=
us.com/manual/classuhd_1_1rfnoc_1_1fft__block__control.html</a><br>
                      <br>
                    </div>
                  </blockquote>
                  <div>The <a rel=3D"noreferrer nofollow noopener"
                      target=3D"_blank"
href=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/i=
p/axi_fft/axi_fft.xci"
                      moz-do-not-send=3D"true">xci file</a> still shows a
                    transform length of 1024. Also, I think that the
                    X300 MTU size is 10 which implies 2^10=3D1024 x 64bit
                    is the max payload. This implies 2048 32-bit words
                    in the payload. But, because of a few bytes of
                    header, it is not possible to use an FFT of length
                    2048 unless the FFT length is divorced from the
                    packet length.</div>
                  <div>Rob<br>
                  </div>
                  <br>
                </div>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
        <br>
      </div>
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

--------------OExqFzzDRi34TVIKYdcU0xOf--

--===============3240238366920988676==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3240238366920988676==--
