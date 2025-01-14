Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA55A10C92
	for <lists+usrp-users@lfdr.de>; Tue, 14 Jan 2025 17:44:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7537738636F
	for <lists+usrp-users@lfdr.de>; Tue, 14 Jan 2025 11:44:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736873093; bh=E53qdRN7BNzOAc3KtwdkYOP0O7Bxeqx8lJnUfHsC20o=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=0e77iyEegXMvn9kuBHusi+LLC1eXGln+iviwwHI9gCwKSxuvrTVQO2AToo44CWUET
	 ondsT/3NQlI0RmoU9STE38FQSKfWXgZFaL5nXjtu1vVEDrq2dsvi7COgUGecwnhLE9
	 Eams9SzoRkTJDOEP1pe5gDFzqx0hGsDcruIuwsCzeYUaHUQstwwS6HoczBaJWeEVoi
	 fYa/JKocrQy5EaY6io+YnTc8VUsm/xXaET4m41tQLWYwk+p59VWN1Zf7NmleZRP3Rj
	 zMUCXrULQTvIT2V/gv6LXi5KJGuQaaKGqvJ1GbAhmvVQIuDul4FPz/fJCnCN2264j0
	 05LL99namh/hQ==
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by mm2.emwd.com (Postfix) with ESMTPS id E31FB385FBC
	for <usrp-users@lists.ettus.com>; Tue, 14 Jan 2025 11:44:35 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hVewC14Z";
	dkim-atps=neutral
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-6d89a727a19so61359616d6.0
        for <usrp-users@lists.ettus.com>; Tue, 14 Jan 2025 08:44:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736873075; x=1737477875; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rC57p0D9TuE7v6KLg8ml+Oq3hZsew9njX7PBY/3x+BQ=;
        b=hVewC14ZjuZdHkQVCvnW6azJHVrCYcfnNOIDYOKp3fJBvW1paaJn4lRoVsyKLkuR/n
         fyn6KrXoX2x1zuoaOQNOPcpBuE5WlgW/8jyS8y8V5hPDYPnyRoIMnO11A/3Ab3W25gv9
         Igq6Bl+HV8cIeZF4kXN8andKFCzhnkjjf//yu4bC1R7veCnF6sDmRNzt2zb3cSuXhSvH
         v1GYSjsX2BxpAmRx86dj8c2DdjWZq6s0CFx/EttCaBTLwkXRCzhBT/34OZkqkTwoIR57
         B27t/92YWxkUrhIIPiwYhcyqlmqO/CpGHET8jCgIv0owePeObyZ8Q4+USGWaXxodvYgZ
         TNnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736873075; x=1737477875;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rC57p0D9TuE7v6KLg8ml+Oq3hZsew9njX7PBY/3x+BQ=;
        b=Uv5sGpmnQxSeAKT/42Ayw6W7UW2Mn1ifns7HvvGnhc9q5V1nh/YzBNCvxOekm2A5d8
         /o/IGF+5NLLTOsQhAIVX/DYUyCTTjXkt2/FVvjwOsMPPv4Gh2us6lmGdugMfLcLofRs4
         yOZWMeOX1XaCmjRH1fC+HasNzAxV8M+jkHF2rOrrB33vosRWpUCf/d1zkvSHTynUBGHp
         bxwhtzRjpQZo3KXMrf8j6Ftbjpa52fDdTjbPwksRjbZMCu/ZZ+lXdDa2qWR5IUwn9rCE
         yaRROtsuh0JWrYn6Upqs9vvMYI5yIP8cyCev36gyDMMRKnKYJQxnh41o2rUcyao8GdvN
         VEEg==
X-Gm-Message-State: AOJu0Yzn3CRLbJt0emm1yTsAG3NkG1Kaons9TZgJN0RCkyg84n2gnlx4
	tvLm88aA5V6EW1L4GAFb1lSHqdiO7vAstkMmSSBZwWOnfup4fcORkArIjw==
X-Gm-Gg: ASbGnct/2BUH3GN8XMKmj2N+28EtQG5bZ4yikc8f/VOGbTsKS3v5nKrRMpcFmOXU77i
	A0QbzbVW1i7RvlnNr9rudzkrx4fY2ZCeldnGiDcMpNGd7nCtbnBGHskDshLhO4LDBxO62NLD+qf
	10d5B8UEN1zxcp9elpRvqA6loMbLZW7+i/6LiyViITOpnP2u5qussu0QFdFqE9P0zXOcf2U80QX
	WFX2jCSz9nbDCA5jTtG2Iaq42D7Zh+0fhu9lLf3CE1p1nkeV6YkCqTwPNpFGhC0+Y0=
X-Google-Smtp-Source: AGHT+IHzv/IQ5gcRGjptgRuZsLQiiHhSntBH2Ia8e0+33TKKDluJep0mndfHwapmMLvCxxvihjR8qg==
X-Received: by 2002:a05:6214:540d:b0:6d8:b81c:ecc1 with SMTP id 6a1803df08f44-6dfbaa09369mr212573336d6.13.1736873074930;
        Tue, 14 Jan 2025 08:44:34 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6dfad9aec28sm54121166d6.56.2025.01.14.08.44.34
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jan 2025 08:44:34 -0800 (PST)
Message-ID: <a1c55596-7fb9-4736-aedc-5db85be3eb13@gmail.com>
Date: Tue, 14 Jan 2025 11:44:23 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <SJ0PR09MB912651AC1B56D9DD2F202F34EC182@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <SJ0PR09MB912651AC1B56D9DD2F202F34EC182@SJ0PR09MB9126.namprd09.prod.outlook.com>
Message-ID-Hash: CXEO3USLBFEI2ELTRVVLEHPUMX5V7ZJP
X-Message-ID-Hash: CXEO3USLBFEI2ELTRVVLEHPUMX5V7ZJP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Incorrect disk throughput measurement in rx_samples_to_file
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CXEO3USLBFEI2ELTRVVLEHPUMX5V7ZJP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5382713189837458840=="

This is a multi-part message in MIME format.
--===============5382713189837458840==
Content-Type: multipart/alternative;
 boundary="------------WdqlRYqWbXWVA70Tr0L6KxrM"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------WdqlRYqWbXWVA70Tr0L6KxrM
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 14/01/2025 11:40, Eugene Grayver wrote:
> Hi,
>
> The rx_samples_to_file example uses 'dd' to estimate disk throughput.=20
> It is not done correctly.=C2=A0 The code below uses /dev/random as the =
data=20
> source.=C2=A0 This was OK for old SATA drives, but for fast NMVE drives=
 the=20
> rate is limited by the random number generator (which maxes out at=20
> around 1 GB/s on a modern machine).=C2=A0 Therefore the example incorre=
ctly=20
> reports that the disk throughput is too low if the expected write rate=20
> is > 1 GB/s (well within modern drives).=C2=A0 I suggest replacing=20
> /dev/random with /dev/zero.
>
> |std::string disk_check_proc_str =3D|
> |"dd if=3D/dev/random of=3D"||+ temp_file.|*|native|*|()|
> |+=C2=A0" bs=3D"||+ std::to_string(samps_per_buff * channel_count *=20
> sample_type_size)|
> |+=C2=A0" count=3D100";|
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Good catch!=C2=A0=C2=A0 I've run into this problem in another context.


--------------WdqlRYqWbXWVA70Tr0L6KxrM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 14/01/2025 11:40, Eugene Grayver
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:SJ0PR09MB912651AC1B56D9DD2F202F34EC182@SJ0PR09MB9126.namprd09=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        Hi,</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        The rx_samples_to_file example uses 'dd' to estimate disk
        throughput. It is not done correctly.=C2=A0 The code below uses
        /dev/random as the data source.=C2=A0 This was OK for old SATA
        drives, but for fast NMVE drives the rate is limited by the
        random number generator (which maxes out at around 1 GB/s on a
        modern machine).=C2=A0 Therefore the example incorrectly reports =
that
        the disk throughput is too low if the expected write rate is
        &gt; 1 GB/s (well within modern drives).=C2=A0 I suggest replacin=
g
        /dev/random with /dev/zero.=C2=A0</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <table
style=3D"text-align: left; line-height: 20px; border-radius: 0px; margin:=
 0px; width: 675.583px; height: auto; min-height: inherit; table-layout: =
auto; color: rgb(51, 51, 51); box-sizing: border-box; border-collapse: co=
llapse; border-spacing: 0px;"
        cellspacing=3D"0" cellpadding=3D"0">
        <tbody>
          <tr style=3D"background-color: initial;">
            <td
style=3D"width: 660.583px; height: auto; text-align: left; line-height: 2=
0px; border-radius: 0px; background-color: initial; padding-left: 15px; v=
ertical-align: top; min-height: inherit;">
              <div
style=3D"margin: 15px 0px 0px; padding-bottom: 15px; padding-left: 0em; b=
order-radius: 0px; min-height: inherit;">
                <div
style=3D"text-align: left; line-height: 20px; white-space: nowrap; margin=
: 0px; padding-right: 1em; padding-left: 0em; border-radius: 0px; min-hei=
ght: inherit; font-family: Consolas, &quot;Bitstream Vera Sans Mono&quot;=
, &quot;Courier New&quot;, Courier, monospace; font-size: 12pt; color: rg=
b(0, 0, 0);">
                  <code
style=3D"font-family: Consolas, &quot;Bitstream Vera Sans Mono&quot;, &qu=
ot;Courier New&quot;, Courier, monospace;">std::string
                    disk_check_proc_str =3D</code></div>
                <div
style=3D"text-align: left; line-height: 20px; white-space: nowrap; margin=
: 0px; padding-right: 1em; padding-left: 0em; border-radius: 0px; min-hei=
ght: inherit; font-size: 12pt; color: rgb(0, 0, 0);">
                  <span
style=3D"font-family: Consolas, &quot;Bitstream Vera Sans Mono&quot;, &qu=
ot;Courier New&quot;, Courier, monospace;"><code
style=3D"font-family: Consolas, &quot;Bitstream Vera Sans Mono&quot;, &qu=
ot;Courier New&quot;, Courier, monospace;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0
                      "dd if=3D/dev/random of=3D"</code></span><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif;">=C2=A0</span><span
style=3D"font-family: Consolas, &quot;Bitstream Vera Sans Mono&quot;, &qu=
ot;Courier New&quot;, Courier, monospace;"><code
style=3D"font-family: Consolas, &quot;Bitstream Vera Sans Mono&quot;, &qu=
ot;Courier New&quot;, Courier, monospace;">+
                      temp_file.</code><b><code
style=3D"font-family: Consolas, &quot;Bitstream Vera Sans Mono&quot;, &qu=
ot;Courier New&quot;, Courier, monospace;">native</code></b><code
style=3D"font-family: Consolas, &quot;Bitstream Vera Sans Mono&quot;, &qu=
ot;Courier New&quot;, Courier, monospace;">()</code></span></div>
                <div
style=3D"text-align: left; line-height: 20px; white-space: nowrap; margin=
: 0px; padding-right: 1em; padding-left: 0em; border-radius: 0px; min-hei=
ght: inherit; font-size: 12pt; color: rgb(0, 0, 0);">
                  <span
style=3D"font-family: Consolas, &quot;Bitstream Vera Sans Mono&quot;, &qu=
ot;Courier New&quot;, Courier, monospace;"><code
style=3D"font-family: Consolas, &quot;Bitstream Vera Sans Mono&quot;, &qu=
ot;Courier New&quot;, Courier, monospace;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0
                      +=C2=A0" bs=3D"</code></span><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif;">=C2=A0</span><span
style=3D"font-family: Consolas, &quot;Bitstream Vera Sans Mono&quot;, &qu=
ot;Courier New&quot;, Courier, monospace;"><code
style=3D"font-family: Consolas, &quot;Bitstream Vera Sans Mono&quot;, &qu=
ot;Courier New&quot;, Courier, monospace;">+
                      std::to_string(samps_per_buff * channel_count *
                      sample_type_size)</code></span></div>
                <div
style=3D"text-align: left; line-height: 20px; white-space: nowrap; margin=
: 0px; padding-right: 1em; padding-left: 0em; border-radius: 0px; min-hei=
ght: inherit; font-family: Consolas, &quot;Bitstream Vera Sans Mono&quot;=
, &quot;Courier New&quot;, Courier, monospace; font-size: 12pt; color: rg=
b(0, 0, 0);">
                  <code
style=3D"font-family: Consolas, &quot;Bitstream Vera Sans Mono&quot;, &qu=
ot;Courier New&quot;, Courier, monospace;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0
                    +=C2=A0" count=3D100";</code></div>
              </div>
            </td>
          </tr>
        </tbody>
      </table>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
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
    Good catch!=C2=A0=C2=A0 I've run into this problem in another context=
.<br>
    <br>
    <br>
  </body>
</html>

--------------WdqlRYqWbXWVA70Tr0L6KxrM--

--===============5382713189837458840==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5382713189837458840==--
