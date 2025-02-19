Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECB8A3AD02
	for <lists+usrp-users@lfdr.de>; Wed, 19 Feb 2025 01:17:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 42BD7383D62
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2025 19:17:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739924224; bh=dXapc7ZTalAwmahsHeujEcj2Lvib+fmOeDYh01bgjww=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=poE3UBnNkdU7QeWk8DCn1f/ruvcZJMNLLIzg8ogFmhPgl22My1rs3fGanKiYWLNP3
	 nybj0K6qa0FjWoh28cZKDJ0qP+nYsvzGvMZhuyRaBr/5nqC/5uB5DFN8+3AY0WMEJF
	 yBTYzkw+Y+rpAXLosdbXptbYV+qFOezzKKEXWxE41V226D4NJMR9qClazn62tORMoK
	 FITOiWczHM3ZZ2mwPWcztdsyjvVG9pwFIO/rsrkQQv5CuNOhm2LpoVpDFh7uH+AtIl
	 JY41rGaUgiWroHUj4kEOnbscVagI6T7XQO6BjZ6qMaoDCFNEgGDvLyUDAVYHtIHPEx
	 FUCAcUfk+gLgw==
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id A9532385655
	for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 19:16:59 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WsNO5Ev4";
	dkim-atps=neutral
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-6dd01781b56so74206566d6.0
        for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 16:16:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739924219; x=1740529019; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N0Rwhf2TzVJx3m4zFLV6JqlJDm3kvX9F3Lqx+Dah4Xc=;
        b=WsNO5Ev4191wwScM7cEiMoZYVrxLmCc2j91LAfZPWpF6SW1OykSkKF9u53sRwMSZ23
         sZVW9i/hZ9SDaRKWRSCYolmrdE4DkySLX6VGUiiq2AgacpDXbUWH1GZJn8SRZ/szBveq
         BpysXP1EYrgLWI0byDiJhAVwKW62dQG/+M/NmcdnseUO99GlEMnK1rDoc7tGNc30q2M5
         F7MuZpfmR/sR67vdXjCZN3koGuuPLUW0elMrbAd2CSDT0zddw6tUmuEmpqv4hXDfGuAi
         5W3f5Fml+IXt4gEjGZOaGJhgB5sFNh+1P5l7bo2QdqON3gorW8ANDKCmUjZmXWg/o39j
         s6IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739924219; x=1740529019;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=N0Rwhf2TzVJx3m4zFLV6JqlJDm3kvX9F3Lqx+Dah4Xc=;
        b=m+4pO3pJlcWWieyeoDivZAriHIoSZAgznACkW6/i7zawklP5+zMj+7F/wqIVFLoRn6
         t2JMIciw/9xrWSiRedPzK1L/At6eb7s6zJSBxOyHgM90ozButusp4xB9EPAVXze16Pf3
         GocdzfMyvUMHG0Mc1/acdElTGpqV0ICDY0I+iEr1VtriSuJzTLC4MByjJdmZQGF1pT8x
         RSjZKN9D2G5HeZTg3un0sNcNuWFmRTtNuQJJNz7gSb9AdI/aLHEYQyoysegiyZde0DLV
         IlvulZyuSgxn8UYB8EIkG5nkdTyxQ8qDJHM0P+4ouXcg+cuygLwpVAJecpakFn8oaAUu
         m9Gg==
X-Gm-Message-State: AOJu0YxZU//90WbrhLI5Io4nfgmtsrnb0+vc3Vk3A6xixxOTGhgPVGTA
	12XFZA8L+6mRPWeBiAnXw9+NBEyljcVC4jwr1WDf6hyBW8KROL+iPvutnptg
X-Gm-Gg: ASbGnctazNWvRaItGqkfD2I/ChR4PY7hxq8ynx9dR1WQ62KQt7XiuuqxiC46SEgA/Xn
	HXRrcPKmkQNlBoT2Zul7zzAnUrfW7EueTNagfL0uIA8VCb7XAQ7JQBQ9BhBnujKH/E4+ldJ2+sY
	IyfXuAf+wX64mcD2g2dX7lg99LlFKQCbMFO/wcmtv+wkJonC+b4ew7UpY6c6ttrtcoxaFWId5kf
	iPIWiygAEbJoJtLEbfINBveoUAqQS1Ablj3ILqty2lW4NWUD5kT3nJeJTFunZ0+7c7//zyyrkbN
	MP6Rl516WvZpn6CsYITLcQKIcuz+OMKkIbeLwxtzZ4u/G9Z20Leo20ogeys6ASDJ685/1Y0kyHy
	45u3Ci+w/riZZVA==
X-Google-Smtp-Source: AGHT+IENhZE2wkCVuPlvZryp/O8tfRydMS4lCWz+YtW+EOr+aqqrOD10DLPuCtxsgTtNGy6tjzzR7Q==
X-Received: by 2002:a05:6214:194b:b0:6d8:5642:d9dc with SMTP id 6a1803df08f44-6e66cc987e0mr207613156d6.11.1739924219008;
        Tue, 18 Feb 2025 16:16:59 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-20-142-115-37-13.dsl.bell.ca. [142.115.37.13])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6e65daff735sm69162926d6.105.2025.02.18.16.16.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2025 16:16:58 -0800 (PST)
Message-ID: <d3a8592f-30fb-45b3-870d-95b6d1b64f2e@gmail.com>
Date: Tue, 18 Feb 2025 19:16:56 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Brendan Horsfield <brendan.horsfield@vectalabs.com>
References: <CALNMZ8V-5SpmYTthV86m96Cwq1=4OUQpUtwrr3ZPUAzNTS+CRg@mail.gmail.com>
 <28CC5603-8F9C-4D93-A8B9-EA912307AE8A@gmail.com>
 <CALNMZ8WZpZ9hm7pTNUZ+fQ4TN-icBeU4iUAGJF9VDQm=T_Mvxw@mail.gmail.com>
 <7fc34db8-89e4-4e72-beda-cbdd872e3f19@gmail.com>
 <CALNMZ8UYp42D=Tdyy1+EramVAN_LdmeWuDhvnBWLKz-jeoZhBA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CALNMZ8UYp42D=Tdyy1+EramVAN_LdmeWuDhvnBWLKz-jeoZhBA@mail.gmail.com>
Message-ID-Hash: LZVZM3XOCMFYFXH7WQXRWUGITMOUL4PY
X-Message-ID-Hash: LZVZM3XOCMFYFXH7WQXRWUGITMOUL4PY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Usable bandwidth of X300 USRP with UBX-160 daughterboard
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LZVZM3XOCMFYFXH7WQXRWUGITMOUL4PY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2332802699333381831=="

This is a multi-part message in MIME format.
--===============2332802699333381831==
Content-Type: multipart/alternative;
 boundary="------------4v1WQWrBRMNpOIK65XJWYSOq"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------4v1WQWrBRMNpOIK65XJWYSOq
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 18/02/2025 19:13, Brendan Horsfield wrote:
> Thanks for the suggestion about the noise source -- that's what I=20
> would normally=C2=A0do.=C2=A0 Unfortunately I haven't actually purchase=
d the=20
> hardware yet -- I was hoping to clarify this issue before raising a=20
> purchase order.
>
> Perhaps I should follow this up with one of the application engineers=20
> at NI?=C2=A0 They might have access to an X310+UBX-160 system that they=
 can=20
> use to answer my question directly.
>
> Thanks again for your help in this matter.
>
> Regards,
> Brendan.
I actually do work for NI on USRP devices (on a very very very part-time=20
basis).=C2=A0 My X310 is currently elsewhere, and not populated
 =C2=A0 with a UBX-160.


>
> On Wed, 19 Feb 2025 at 09:55, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 18/02/2025 18:45, Brendan Horsfield wrote:
>>     Yes, I assumed that was the case.=C2=A0 However, it is not clear f=
rom
>>     the X300 documentation how sharp those filters are.=C2=A0 Can you =
tell
>>     me how wide the transition band is at the lower sample rates?
>>
>>     To give you some context, I would like to use an X300 (or X310)
>>     with a UBX-160 daughterboard to digitise the entire 2.4 GHz Wi-Fi
>>     band, which is 83.5 MHz wide.=C2=A0 Ideally I would like to use a
>>     sample rate of 100 Msps to minimise the data rate between the
>>     USRP and the host PC.=C2=A0 However, before I do this I need to be
>>     certain that the usable bandwidth at this sample rate will be
>>     greater than 83.5 MHz.=C2=A0 Is this information documented somewh=
ere?
>>
>>
>     It somewhat depends on the decimation.=C2=A0 If the decimation has =
a
>     factor of two or 4, the edge roll-off is fairly sharp.=C2=A0 Otherw=
ise,
>     =C2=A0 there's a half-band filter in-place that causes a less-desir=
able
>     pass-band.
>
>     But I don't know, precisely, what the transition band is in the
>     "nicer" filter shapes.
>
>
>     If you have an X310+UBX-160, you can always just use a noise
>     source, and measure it yourself to see if it's appropriate for
>     =C2=A0 your application.
>
>
>>
>>     On Tue, 18 Feb 2025 at 23:11, Marcus D Leech
>>     <patchvonbraun@gmail.com> wrote:
>>
>>         There will always be some edge roll off. Decimation includes
>>         filtering and those filters cannot be infinitely steep.
>>         Sent from my iPhone
>>
>>         > On Feb 18, 2025, at 2:12=E2=80=AFAM, Brendan Horsfield
>>         <brendan.horsfield@vectalabs.com> wrote:
>>         >
>>         > =EF=BB=BF
>>         > Hi All,
>>         >
>>         > I have a question about the usable bandwidth of the X300
>>         USRP / UBX-160 daughterboard combo at sampling rates below
>>         200 Msps:
>>         >
>>         > As I understand it, the UBX-160 receiver has an analog
>>         (hardware) filter before the ADC that limits the usable
>>         bandwidth to 160 MHz, while the ADC runs at 200 Msps.=C2=A0
>>         Therefore the usable bandwidth is around 80% of the sample rat=
e.
>>         >
>>         > My question is:=C2=A0 What is the usable bandwidth at lower
>>         sampling rates?=C2=A0 Does the 80% factor always apply?
>>         >
>>         > For example, if I set the decimation factor to 4, so that
>>         my sampling rate is 50 Msps, does this mean that the usable
>>         bandwidth will be 40 MHz?
>>         >
>>         > Thanks & Regards,
>>         > Brendan.
>>         >
>>         > _______________________________________________
>>         > USRP-users mailing list -- usrp-users@lists.ettus.com
>>         > To unsubscribe send an email to
>>         usrp-users-leave@lists.ettus.com
>>
>

--------------4v1WQWrBRMNpOIK65XJWYSOq
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 18/02/2025 19:13, Brendan Horsfield
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CALNMZ8UYp42D=3DTdyy1+EramVAN_LdmeWuDhvnBWLKz-jeoZhBA@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Thanks for the suggestion about the noise source -=
-
        that's what I would normally=C2=A0do.=C2=A0 Unfortunately I haven=
't
        actually purchased the hardware yet -- I was hoping to clarify
        this issue before raising a purchase order.
        <div><br>
        </div>
        <div>Perhaps I should follow this up with one of the application
          engineers at NI?=C2=A0 They might have access to an X310+UBX-16=
0
          system that they can use to answer my question directly.</div>
        <div><br>
        </div>
        <div>Thanks again for your help in this matter.</div>
        <div><br>
        </div>
        <div>Regards,</div>
        <div>Brendan.</div>
      </div>
    </blockquote>
    I actually do work for NI on USRP devices (on a very very very
    part-time basis).=C2=A0 My X310 is currently elsewhere, and not popul=
ated<br>
    =C2=A0 with a UBX-160.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CALNMZ8UYp42D=3DTdyy1+EramVAN_LdmeWuDhvnBWLKz-jeoZhBA@mail.gm=
ail.com">
      <div dir=3D"ltr">
        <div>=C2=A0 =C2=A0</div>
      </div>
      <br>
      <div class=3D"gmail_quote gmail_quote_container">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, 19 Feb 2025 at 09:5=
5,
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <div>
            <div>On 18/02/2025 18:45, Brendan Horsfield wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Yes, I assumed that was the case.=C2=A0 Ho=
wever,
                it is not clear from the X300 documentation how sharp
                those filters are.=C2=A0 Can you tell me how wide the
                transition band is at the lower sample rates?
                <div><br>
                </div>
                <div>To give you some context, I would like to use an
                  X300 (or X310) with a UBX-160 daughterboard to
                  digitise the entire 2.4 GHz Wi-Fi band, which is 83.5
                  MHz wide.=C2=A0 Ideally I would like to use a sample ra=
te
                  of 100 Msps to minimise the data rate between the USRP
                  and the host PC.=C2=A0 However, before I do this I need=
 to
                  be certain that the usable bandwidth at this sample
                  rate will be greater than 83.5 MHz.=C2=A0 Is this
                  information documented somewhere?=C2=A0=C2=A0</div>
                <div><br>
                </div>
                <div><br>
                </div>
              </div>
            </blockquote>
            It somewhat depends on the decimation.=C2=A0 If the decimatio=
n
            has a factor of two or 4, the edge roll-off is fairly
            sharp.=C2=A0 Otherwise,<br>
            =C2=A0 there's a half-band filter in-place that causes a
            less-desirable pass-band.<br>
            <br>
            But I don't know, precisely, what the transition band is in
            the "nicer" filter shapes.<br>
            <br>
            <br>
            If you have an X310+UBX-160, you can always just use a noise
            source, and measure it yourself to see if it's appropriate
            for<br>
            =C2=A0 your application.<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>=C2=A0</div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 18 Feb 2025=
 at
                  23:11, Marcus D Leech &lt;<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">patchvonbraun@gmail.c=
om</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">There
                  will always be some edge roll off. Decimation includes
                  filtering and those filters cannot be infinitely
                  steep. <br>
                  Sent from my iPhone<br>
                  <br>
                  &gt; On Feb 18, 2025, at 2:12=E2=80=AFAM, Brendan Horsf=
ield
                  &lt;<a href=3D"mailto:brendan.horsfield@vectalabs.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">brendan.horsfield@vec=
talabs.com</a>&gt;
                  wrote:<br>
                  &gt; <br>
                  &gt; =EF=BB=BF<br>
                  &gt; Hi All,<br>
                  &gt; <br>
                  &gt; I have a question about the usable bandwidth of
                  the X300 USRP / UBX-160 daughterboard combo at
                  sampling rates below 200 Msps:<br>
                  &gt; <br>
                  &gt; As I understand it, the UBX-160 receiver has an
                  analog (hardware) filter before the ADC that limits
                  the usable bandwidth to 160 MHz, while the ADC runs at
                  200 Msps.=C2=A0 Therefore the usable bandwidth is aroun=
d
                  80% of the sample rate.<br>
                  &gt; <br>
                  &gt; My question is:=C2=A0 What is the usable bandwidth=
 at
                  lower sampling rates?=C2=A0 Does the 80% factor always
                  apply?=C2=A0 <br>
                  &gt; <br>
                  &gt; For example, if I set the decimation factor to 4,
                  so that my sampling rate is 50 Msps, does this mean
                  that the usable bandwidth will be 40 MHz?<br>
                  &gt; <br>
                  &gt; Thanks &amp; Regards,<br>
                  &gt; Brendan.<br>
                  &gt; <br>
                  &gt; _______________________________________________<br=
>
                  &gt; USRP-users mailing list -- <a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users@lists.ettu=
s.com</a><br>
                  &gt; To unsubscribe send an email to <a
                    href=3D"mailto:usrp-users-leave@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users-leave@list=
s.ettus.com</a><br>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------4v1WQWrBRMNpOIK65XJWYSOq--

--===============2332802699333381831==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2332802699333381831==--
