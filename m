Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB6EA4D267
	for <lists+usrp-users@lfdr.de>; Tue,  4 Mar 2025 05:11:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 243F738562A
	for <lists+usrp-users@lfdr.de>; Mon,  3 Mar 2025 23:11:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741061475; bh=2EDIPECDXBnI6UP6k2Mwa77weX/AP00v+xe6njty/CU=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Mp1nKRCugKFwEZRKPyhMRBsxMQ3gmZMjaotUWJJS4PWagGot051+5KBeIQ7/jen3t
	 Je4wU43WLlet3tgqgFxXumEsxTnVArZfL1BTcaKWZu816VxswHw3b6+r1ZFEqzuJJk
	 872Ud7DFpxLK6bfnII90CGg0aOX+cC0QESqQp57lQvhnJ8qP96AzxatmIhdsxnFJZV
	 GIIBfMcqlqO/PdQgSCcZVd0z8J7jKMDMUFEcNHqE1ntP7j/HfiXbf0rz1VP0eoS1by
	 Dahpcbb0z94GJQY5nA9z10NbAjGRIn1MSjJ4UqSnf+iC/tOPjK0ctHp26DVHGjRfId
	 M9luIDHO1ucjw==
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id C2899380C58
	for <usrp-users@lists.ettus.com>; Mon,  3 Mar 2025 23:10:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dwUKbE70";
	dkim-atps=neutral
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-7c0ade6036aso583085085a.0
        for <usrp-users@lists.ettus.com>; Mon, 03 Mar 2025 20:10:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741061446; x=1741666246; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wvsDUYdjpTJHQRs1UcKmO1/iar2bJd0epQNEts9DUwQ=;
        b=dwUKbE70FMf80P2e/WjgOAUB0HymdkATp27m6IjbK0CyZdBsXcjB5Pktu3T4rHGhfo
         u9VYvLf5sr3te5ERmh7hbhDfH/fQFAMKR3Crobyq/pWXIbJRAMmtiAkss4qriCt3y7gH
         MiyvdPgWKDyAUFIpQynOjtweP0xdD4ayr+1qwy1QFiqZzPbokQ6AHrJ7klxNNiCdjkIp
         JSvpusx+qJnmeS2zpGINqiLhSCU6hdKRKWv+kuPXwwyOVsuXRmmeY8JQBNm32fh3hwRg
         w1v08oJZ3FbzNnSVoH7SXz8pnengrNasN0rf+EEPpRCIGl7OnVpCqsgvc72nORempH5v
         dfZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741061446; x=1741666246;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wvsDUYdjpTJHQRs1UcKmO1/iar2bJd0epQNEts9DUwQ=;
        b=mpqICO34r3ZXExzOAO2TCCn8DhYTjsBcuZ2Rj2kBh9+FyFw/LVxWxJ0+sGVir2zSFM
         tRw+dWrOB05EvbW9aoXxNLy3T/vodlbADna/CPGlcYghILBxqkFqOQ0nJ/jqkvhXvGAQ
         d63ToG8r8yROLiX94YiLWApOZ05F3HHcIVvU4Z3vAb2vmiimBmz11oi+B5ibn05yjaPU
         58yJecoCTRxMGsWvR1pbg1zorEvkSJ2ZFkDesE0hrGV+FhD7ODnPHgrq78tbWD1RQ8Io
         RpwawREGlysfzx++cJ6+fs7LVud953Y0RY57sYAipZwJf3u/JNyBuA/WnlaZP+qzD/rF
         XXug==
X-Gm-Message-State: AOJu0YzuwlL7MtdJd4NeaAYEct7moIjoWXEk22adKpGL5sd3UhFHUgAd
	UghLOa1pmQ99/4N/+UrO8v4Y/K8z2rarJcOBFm0I7dHu0kzTlJ0O
X-Gm-Gg: ASbGnctGqZy+AjAoREMlVdIn0sFPldDWOw2jdOiQ10CPJ3QUTImajVoKnViHL+Uw3uo
	e1BOJloR4fh5VlMZfLpqPRhKS6YHuFuNMgLe3DzOuVK5XxQKerlJt98+FV+bLQkFYlii6xdtr2c
	n9neC8rceITJM9eL8PMavzD3bu0Kr5s4gbT2CIkShGCXil2XB8EoK8vxF1GXNLE9B0chK1TK9fX
	8crP9yzdO7yfMBKg9cpamHm2j303mUgoyQ6a9QN9/Sf3W+xGvkg/E0oW1K+g3RnpH2dhcgBZad2
	fBGo20ziJeOcbeu+89czNNvNSaGDj7jyufeKghmoawlty03NxTEtTMULnyTLDAHy1zFwFLNxofp
	eJd7ptvwy1/ng1WNaCvTWs2nlXNRtHITWRMNoxc7Zi/o=
X-Google-Smtp-Source: AGHT+IFVhgvdHA8p2RxxSUEcoJru7KTCRnXBAbiUYEj7ziMeBs1br2AZbyS1eF7hosmDJiCBtS761g==
X-Received: by 2002:a05:620a:5744:b0:7c0:9e8a:eab4 with SMTP id af79cd13be357-7c3cc363f24mr210915785a.29.1741061446145;
        Mon, 03 Mar 2025 20:10:46 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-20-142-115-37-13.dsl.bell.ca. [142.115.37.13])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7c3cf05c135sm32941885a.56.2025.03.03.20.10.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Mar 2025 20:10:45 -0800 (PST)
Message-ID: <6f6cf732-9ce3-4bd2-a3a8-d78db5254e85@gmail.com>
Date: Mon, 3 Mar 2025 23:10:43 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Mark Gannet <mgannet@gmail.com>
References: <CAAv0A=MCFrxkvS95kfPJM6TKDM5LTQNLy5GbREOswVWQdCa44Q@mail.gmail.com>
 <15ff7079-3d5f-4ba6-a6eb-9b0c62680369@gmail.com>
 <CABL+oDa_oj9D7shKVrdszzPqP6y5H99VcqgXP2paWsv2-f=k1Q@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CABL+oDa_oj9D7shKVrdszzPqP6y5H99VcqgXP2paWsv2-f=k1Q@mail.gmail.com>
Message-ID-Hash: 2BNEIDF33MP5RAF2BZSX5GBUI2BQDFIW
X-Message-ID-Hash: 2BNEIDF33MP5RAF2BZSX5GBUI2BQDFIW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RX Noise Figure
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2BNEIDF33MP5RAF2BZSX5GBUI2BQDFIW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4196048145397943400=="

This is a multi-part message in MIME format.
--===============4196048145397943400==
Content-Type: multipart/alternative;
 boundary="------------14naw8UfAoaBcaa0KsKwjnaM"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------14naw8UfAoaBcaa0KsKwjnaM
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 03/03/2025 22:59, Mark Gannet wrote:
> For an ADC, I believe the noise power is fairly constant. As sample=20
> rate increases, noise power density should decrease and SNR should=20
> improve. Thus a measured improvement in noise figure.
>
> Source:=20
> https://www.analog.com/en/resources/technical-articles/noise-spectral-d=
ensity.html
>
> x310 ADC (ADS62P48): http://www.ti.com/lit/ds/slas635b/slas635b.pdf
>
> Mark
Thanks.=C2=A0 Trying to get my head around this a bit.=C2=A0 The X310 run=
s the ADC=20
at a fixed rate, and host-directed sample rates are
 =C2=A0 based on the actions of a DDC filter/sample-rate converter.


>
>
> On Mon, Mar 3, 2025, 7:48=E2=80=AFPM Marcus D. Leech <patchvonbraun@gma=
il.com>=20
> wrote:
>
>     On 03/03/2025 22:23, Dustin Widmann via USRP-users wrote:
>     > Hi all,
>     >
>     > I see an interesting trend and I'm not sure how to explain it ...
>     >
>     > I've done a y-factor measurement, sweeping the frequency, samplin=
g
>     > rate, and rx-gain with an x310 with the SBX-120 daughterboard. Th=
e
>     > results seem similar to the published performance specs. The
>     part I'm
>     > not sure quite how to explain is why the NF would vary with the
>     > sampling rate. Doesn't the X310 use a static sample rate and
>     > downsample in the FPGA? Why would this affect the NF? Why does th=
e
>     > effect seem to be more exaggerated at higher gain settings? Why
>     is the
>     > effect on NF very small at higher sampling rates but more pronoun=
ced
>     > at lower ones instead of being a linear change?
>     >
>     > Dustin
>     >
>     What noise inputs are you using for the two levels in your Y-factor=
?
>
>     The amount of power represented at each sample-rate is different, a=
nd
>     shooting from the hip here, the amount of energy
>     =C2=A0=C2=A0 represented in the transition regions at different sam=
ple rates
>     will
>     be different.=C2=A0 For example, odd/even/factor-of-4
>     =C2=A0=C2=A0 sample-rates have different pass-band shapes.
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------14naw8UfAoaBcaa0KsKwjnaM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 03/03/2025 22:59, Mark Gannet wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CABL+oDa_oj9D7shKVrdszzPqP6y5H99VcqgXP2paWsv2-f=3Dk1Q@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"auto">
        <div>For an ADC, I believe the noise power is fairly constant.
          As sample rate increases, noise power density should decrease
          and SNR should improve. Thus a measured improvement in noise
          figure.
          <div dir=3D"auto"><br>
          </div>
          <div dir=3D"auto">Source:=C2=A0<a
href=3D"https://www.analog.com/en/resources/technical-articles/noise-spec=
tral-density.html"
              target=3D"_blank" rel=3D"noreferrer" moz-do-not-send=3D"tru=
e"
              class=3D"moz-txt-link-freetext">https://www.analog.com/en/r=
esources/technical-articles/noise-spectral-density.html</a></div>
          <div dir=3D"auto"><br>
          </div>
          <div dir=3D"auto">x310 ADC (ADS62P48):=C2=A0<a
              href=3D"http://www.ti.com/lit/ds/slas635b/slas635b.pdf"
              target=3D"_blank" rel=3D"noreferrer" moz-do-not-send=3D"tru=
e"
              class=3D"moz-txt-link-freetext">http://www.ti.com/lit/ds/sl=
as635b/slas635b.pdf</a></div>
          <div dir=3D"auto"><br>
          </div>
          <div dir=3D"auto">Mark</div>
        </div>
      </div>
    </blockquote>
    Thanks.=C2=A0 Trying to get my head around this a bit.=C2=A0 The X310=
 runs the
    ADC at a fixed rate, and host-directed sample rates are<br>
    =C2=A0 based on the actions of a DDC filter/sample-rate converter.<br=
>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CABL+oDa_oj9D7shKVrdszzPqP6y5H99VcqgXP2paWsv2-f=3Dk1Q@mail.gm=
ail.com">
      <div dir=3D"auto">
        <div><br>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Mar 3, 2025,
              7:48=E2=80=AFPM Marcus D. Leech &lt;<a
                href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank"
                rel=3D"noreferrer" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</=
a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote"
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">O=
n
              03/03/2025 22:23, Dustin Widmann via USRP-users wrote:<br>
              &gt; Hi all,<br>
              &gt;<br>
              &gt; I see an interesting trend and I'm not sure how to
              explain it ...<br>
              &gt;<br>
              &gt; I've done a y-factor measurement, sweeping the
              frequency, sampling<br>
              &gt; rate, and rx-gain with an x310 with the SBX-120
              daughterboard. The<br>
              &gt; results seem similar to the published performance
              specs. The part I'm<br>
              &gt; not sure quite how to explain is why the NF would
              vary with the<br>
              &gt; sampling rate. Doesn't the X310 use a static sample
              rate and<br>
              &gt; downsample in the FPGA? Why would this affect the NF?
              Why does the<br>
              &gt; effect seem to be more exaggerated at higher gain
              settings? Why is the<br>
              &gt; effect on NF very small at higher sampling rates but
              more pronounced<br>
              &gt; at lower ones instead of being a linear change?<br>
              &gt;<br>
              &gt; Dustin<br>
              &gt;<br>
              What noise inputs are you using for the two levels in your
              Y-factor?<br>
              <br>
              The amount of power represented at each sample-rate is
              different, and <br>
              shooting from the hip here, the amount of energy<br>
              =C2=A0=C2=A0 represented in the transition regions at diffe=
rent
              sample rates will <br>
              be different.=C2=A0 For example, odd/even/factor-of-4<br>
              =C2=A0=C2=A0 sample-rates have different pass-band shapes.<=
br>
              <br>
              <br>
              _______________________________________________<br>
              USRP-users mailing list -- <a
                href=3D"mailto:usrp-users@lists.ettus.com"
                rel=3D"noreferrer noreferrer" target=3D"_blank"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users@lists.ettus.com</a><br>
              To unsubscribe send an email to <a
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                rel=3D"noreferrer noreferrer" target=3D"_blank"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users-leave@lists.ettus.com</a><br>
            </blockquote>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------14naw8UfAoaBcaa0KsKwjnaM--

--===============4196048145397943400==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4196048145397943400==--
