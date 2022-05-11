Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 80194523D99
	for <lists+usrp-users@lfdr.de>; Wed, 11 May 2022 21:34:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C3B7A3844E4
	for <lists+usrp-users@lfdr.de>; Wed, 11 May 2022 15:34:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652297664; bh=y9YDF+os7kcfziqJxENwGHc5PwZb3WdjVFxh/Qs3sPw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=RPvfDrHIpYzz1A8KZbzp/NWNinr/96XzVvSb5qyJJI3icSANhT+IghuiFweHK3p1n
	 oyMKJ6JhZgvC+0g74QjJXCWj7+fFy3QpkRMjrRzuDEoLOX70CtgzsuAsOQZPmQMs3S
	 u8fF8gJh4mO+TfXp1IUhkClZsMJ3enEZbobpnnVO23JnSrxPKminGni6pexO3l/UqQ
	 WQG/3cUxRv5q+Ge3n+AEZ0JO2W26EjspgcDke5iE+kM7r9Tx91ytZjmn8vS6194pjI
	 BQEsmjGn9nP9KC0NUwtPDcl+NHkZcMZGHuvgSpakOtYdlPyzW1zkVjkMYj5Yu3wXe+
	 ofN5PaTbKskdQ==
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	by mm2.emwd.com (Postfix) with ESMTPS id D4B7138437F
	for <usrp-users@lists.ettus.com>; Wed, 11 May 2022 15:33:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DsJMW6mq";
	dkim-atps=neutral
Received: by mail-qv1-f51.google.com with SMTP id dv4so2807983qvb.13
        for <usrp-users@lists.ettus.com>; Wed, 11 May 2022 12:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=McBOB3KkXTChwoAuGU47RKnwuBfmQownIP7JL+fkWY8=;
        b=DsJMW6mq86dh2KOZAwtnAFByHwsvXKYDsTllm9PjsRwqbl7pTZznr7ctyqJfffLQqw
         XVlU0ruOMY4ZBD9p/8SKdKrwIR6PmHzmL4uVG2TXX23cQPPiotQJrF6L4AzTDFbszi1t
         JwPDs+7ffeh2GC9Rv9d+7yHfvcNi1h4iHRo7Oc6QWGmGYHPiz5u0IIX+4btps7Jg5/fb
         jhuLim2CCZqIn/NSLio3kv7hWY5Em3P172CxvCO7LiGnbz+Vt7xF86zU/gfSQ0LNAWtv
         7HTKrJa0/h17/4AcbBLVZ4kkfA2y0oXcDEmPM6F20AMYdmBJ7k87IUEa/3xHKK4toOoA
         V5zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=McBOB3KkXTChwoAuGU47RKnwuBfmQownIP7JL+fkWY8=;
        b=tiEU0dVUMOB4Vkc/FgTdzOcmDnZB8Wi1CoP2yzy5dcFcHDo/yvVTTpbVhp3qKHNok2
         2ISzdAD/g10tBuEC7OTjhoZq5Ei8IC9hzG30aNPzTy6mdeZGxHDEXzpEuKPhJp7syWoR
         YAxO55dNny/hiHxp2+7LYGCfFGNucQoq7C9AtqsPJdqjtOPuctwzRK55gzoue0ZBQMVX
         9gbVkb1ZbI0wtbxavv1nQ1eKeVN5wsvELQhzgbDJZ8BRN0wis+WJ2WEs3DcdkjT1HsBW
         qbiACWeZSvKg2e04VBMmtH47f1b36BCnzRLTpISF3w49nZak5MV2SOLOYTALIxcjVziV
         D53A==
X-Gm-Message-State: AOAM530SXhhqOW+FCySwxSdPdQWlTpkfG7z576VDvYKcvjQ2VM1w/Dy+
	IyWZmyMTrRy6JIrWufgdsY0=
X-Google-Smtp-Source: ABdhPJxjGF9AoqwdZXdeNkHMgQ2FKlJwl9+uUu1rZ1RRLI2xxOPe3GUCwphTDgKFfZ8O+F7CuEhFGA==
X-Received: by 2002:a05:6214:b6f:b0:450:a4ab:b409 with SMTP id ey15-20020a0562140b6f00b00450a4abb409mr23201186qvb.123.1652297599204;
        Wed, 11 May 2022 12:33:19 -0700 (PDT)
Received: from [192.168.2.184] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id r11-20020ac87eeb000000b002f39b99f6b4sm1699142qtc.78.2022.05.11.12.33.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 May 2022 12:33:18 -0700 (PDT)
Message-ID: <294650d1-0eb7-d077-d024-f8a4e75ccafa@gmail.com>
Date: Wed, 11 May 2022 15:33:17 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: "Dobler, Anton" <anton.dobler@unibw.de>,
 "discuss-gnuradio@gnu.org" <discuss-gnuradio@gnu.org>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <1652294738824.26535@unibw.de>
 <c20f56be-97d7-26dc-014f-fa5828627e96@gmail.com>
 <1652297098503.13596@unibw.de>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1652297098503.13596@unibw.de>
Message-ID-Hash: CWWCVNE66RKF7WUDSNXKGZZHE37GDIB3
X-Message-ID-Hash: CWWCVNE66RKF7WUDSNXKGZZHE37GDIB3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC, UHD4.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CWWCVNE66RKF7WUDSNXKGZZHE37GDIB3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7934282568222670241=="

This is a multi-part message in MIME format.
--===============7934282568222670241==
Content-Type: multipart/alternative;
 boundary="------------rQWxS1HwUDph5gVXsT2ZV8Gv"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------rQWxS1HwUDph5gVXsT2ZV8Gv
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-05-11 15:24, Dobler, Anton wrote:
> I use a n310 and have two 10gigbit for data streaming and one 1gigbit=20
> for managing the device=E2=80=A6 the strange thing about it is that the=
=20
> example flowgraph with rx radio downconverter and rx streamer works=20
> without any problems=E2=80=A6
> I run the application on the host pc=E2=80=A6
> What is that receiver profile error about?
>
> What can I do about the sha256 error? I also think the problem is=20
> rather due to my setup =E2=80=A6
You might try upgrading to newer release of UHD.=C2=A0=C2=A0 I would also=
 suggest=20
continuing this discussion on the usrp-users mailing list, where there's=20
a bit more RFNOC
 =C2=A0 activity and expertise.

I don't know what to suggest about the SHA256 error.=C2=A0 Possibly your=20
installation doesn't have the correct SHA256 tools, or your filesystem=20
is truncating the files?
 =C2=A0 The images_downloader application uses the Python package "hashli=
b".=C2=A0=20
Perhaps that is failing in some way in your installation?


>
> Thank you,
>
> BR
> -----------------------------------------------------------------------=
-
> *Von:* Discuss-gnuradio=20
> <discuss-gnuradio-bounces+anton.dobler=3Dunibw.de@gnu.org> im Auftrag=20
> von Marcus D. Leech <patchvonbraun@gmail.com>
> *Gesendet:* Mittwoch, 11. Mai 2022 20:54:15
> *An:* discuss-gnuradio@gnu.org; usrp-users@lists.ettus.com
> *Betreff:* Re: RFNoC, UHD4.0
> On 2022-05-11 14:45, Dobler, Anton wrote:
>>
>> Dear Community,
>>
>>
>> I try to set up a basic flowgraph in GRC consisting out of a null=20
>> source, a tx streamer and DUC and a TX radio.
>>
>>
>> I use UHD4.0 and GR3.8.2.
>>
>>
>> However, I get the following error message:
>>
>>
>> /RuntimeError: RuntimeError: Error during RPC call to `init'. Error=20
>> message: RuntimeError: Receiver profile out of range RF bandwidth./
>>
>>
>> I tried different settings for sample rate, etc. but still I get that=20
>> error. I attached the used flowgraph.
>>
>>
>>
>>
>> The second question is with regards to the default fpga images. When=20
>> I download the images I get the following error:
>>
>>
>> /[ERROR] Downloaded SHA256 does not match manifest for=20
>> https://files.ettus.com/binaries/cache/e3xx/uhd-2cba65b/e3xx_e310_sg1_=
fpga_default-g2cba65b.zip!/
>> /01137 kB / 01137 kB (100%) e3xx_e310_sg3_fpga_default-g2cba65b.zip/
>> /[ERROR] Downloaded SHA256 does not match manifest for=20
>> https://files.ettus.com/binaries/cache/e3xx/uhd-2cba65b/e3xx_e310_sg3_=
fpga_default-g2cba65b.zip!/
>> /10183 kB / 10183 kB (100%) e3xx_e320_fpga_default-g2cba65b.zip/
>> /[ERROR] Downloaded SHA256 does not match manifest for=20
>> https://files.ettus.com/binaries/cache/e3xx/uhd-2cba65b/e3xx_e320_fpga=
_default-g2cba65b.zip!/
>> /20729 kB / 20729 kB (100%) n3xx_n310_fpga_default-g2cba65b.zip/
>> /[ERROR] Downloaded SHA256 does not match manifest for=20
>> https://files.ettus.com/binaries/cache/n3xx/uhd-2cba65b/n3xx_n310_fpga=
_default-g2cba65b.zip!/
>> /14345 kB / 14345 kB (100%) n3xx_n300_fpga_default-g2cba65b.zip/
>> /[ERROR] Downloaded SHA256 does not match manifest for=20
>> https://files.ettus.com/binaries/cache/n3xx/uhd-2cba65b/n3xx_n300_fpga=
_default-g2cba65b.zip!/
>> /27285 kB / 27285 kB (100%) n3xx_n320_fpga_default-g2cba65b.zip/
>> /[ERROR] Downloaded SHA256 does not match manifest for=20
>> https://files.ettus.com/binaries/cache/n3xx/uhd-2cba65b/n3xx_n320_fpga=
_default-g2cba65b.zip!/
>>
>> What can I do to solve that problem?
>>
>>
>>
>> Any help would be more than welcome!
>>
>>
>> Thanks,
>>
>>
>> BR,
>>
>>
>> Anton
>>
> What type of USRP?=C2=A0 Are you running this on the device itself, or =
over=20
> a network connection?=C2=A0 If over a network connection, what type of=20
> connection?
>
>
> The SHA256 errors means that there's a problem with the repository, or=20
> that your access to the repository is corrupting files, or they're=20
> being corrupted on
> =C2=A0 your system as they arrive.=C2=A0=C2=A0 I haven't *heard* that t=
he repository=20
> has any problems for that release of UHD.
>
>

--------------rQWxS1HwUDph5gVXsT2ZV8Gv
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-05-11 15:24, Dobler, Anton
      wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:1652297098503.13596@unibw.de">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      I use a n310 and have two 10gigbit for data streaming and one
      1gigbit for managing the device=E2=80=A6 the strange thing about it=
 is
      that the example flowgraph with rx radio downconverter and rx
      streamer works without any problems=E2=80=A6
      <br>
      I run the application on the host pc=E2=80=A6 <br>
      What is that receiver profile error about? <br>
      <br>
      What can I do about the sha256 error? I also think the problem is
      rather due to my setup =E2=80=A6
      <br>
    </blockquote>
    You might try upgrading to newer release of UHD.=C2=A0=C2=A0 I would =
also
    suggest continuing this discussion on the usrp-users mailing list,
    where there's a bit more RFNOC<br>
    =C2=A0 activity and expertise.<br>
    <br>
    I don't know what to suggest about the SHA256 error.=C2=A0 Possibly y=
our
    installation doesn't have the correct SHA256 tools, or your
    filesystem is truncating the files?<br>
    =C2=A0 The images_downloader application uses the Python package
    "hashlib".=C2=A0 Perhaps that is failing in some way in your
    installation?<br>
    <br>
    <br>
    <blockquote type=3D"cite" cite=3D"mid:1652297098503.13596@unibw.de">
      <br>
      Thank you, <br>
      <br>
      BR
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>Von:</b>
          Discuss-gnuradio
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:discuss-gnura=
dio-bounces+anton.dobler=3Dunibw.de@gnu.org">&lt;discuss-gnuradio-bounces=
+anton.dobler=3Dunibw.de@gnu.org&gt;</a>
          im Auftrag von Marcus D. Leech <a class=3D"moz-txt-link-rfc2396=
E" href=3D"mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt=
;</a><br>
          <b>Gesendet:</b> Mittwoch, 11. Mai 2022 20:54:15<br>
          <b>An:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:discuss-gnuradio@gnu.org">discuss-gnuradio@gnu.org</a>;
          <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-users=
@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
          <b>Betreff:</b> Re: RFNoC, UHD4.0</font>
        <div>=C2=A0</div>
      </div>
      <div>
        <div class=3D"moz-cite-prefix">On 2022-05-11 14:45, Dobler, Anton
          wrote:<br>
        </div>
        <blockquote type=3D"cite" cite=3D"mid:1652294738824.26535@unibw.d=
e">
          <style type=3D"text/css" style=3D"display:none">p { margin-top:=
 0px; margin-bottom: 0px; }</style>
          <p>Dear Community,<br>
          </p>
          <p><br>
          </p>
          <p>I try to set up a basic flowgraph in GRC consisting out of
            a null source, a tx streamer and DUC and a TX radio.=C2=A0<br=
>
          </p>
          <p><br>
          </p>
          <p>I use UHD4.0 and GR3.8.2.<br>
          </p>
          <p><br>
          </p>
          <p>However, I get the following error message:<br>
          </p>
          <p><br>
          </p>
          <p><em>RuntimeError: RuntimeError: Error during RPC call to
              `init'. Error message: RuntimeError: Receiver profile out
              of range RF bandwidth.</em><br>
          </p>
          <p><br>
          </p>
          <p>I tried different settings for sample rate, etc. but still
            I get that error. I attached the used flowgraph.<br>
          </p>
          <p><br>
          </p>
          <p><br>
          </p>
          <p><br>
          </p>
          <p>The second question is with regards to the default fpga
            images. When I download the images I get the following
            error:<br>
          </p>
          <p><br>
          </p>
          <div><em>[ERROR] Downloaded SHA256 does not match manifest for
              <a class=3D"moz-txt-link-freetext"
href=3D"https://files.ettus.com/binaries/cache/e3xx/uhd-2cba65b/e3xx_e310=
_sg1_fpga_default-g2cba65b.zip"
                moz-do-not-send=3D"true">
https://files.ettus.com/binaries/cache/e3xx/uhd-2cba65b/e3xx_e310_sg1_fpg=
a_default-g2cba65b.zip</a>!</em></div>
          <div><em>01137 kB / 01137 kB (100%)
              e3xx_e310_sg3_fpga_default-g2cba65b.zip</em></div>
          <div><em>[ERROR] Downloaded SHA256 does not match manifest for
              <a class=3D"moz-txt-link-freetext"
href=3D"https://files.ettus.com/binaries/cache/e3xx/uhd-2cba65b/e3xx_e310=
_sg3_fpga_default-g2cba65b.zip"
                moz-do-not-send=3D"true">
https://files.ettus.com/binaries/cache/e3xx/uhd-2cba65b/e3xx_e310_sg3_fpg=
a_default-g2cba65b.zip</a>!</em></div>
          <div><em>10183 kB / 10183 kB (100%)
              e3xx_e320_fpga_default-g2cba65b.zip</em></div>
          <div><em>[ERROR] Downloaded SHA256 does not match manifest for
              <a class=3D"moz-txt-link-freetext"
href=3D"https://files.ettus.com/binaries/cache/e3xx/uhd-2cba65b/e3xx_e320=
_fpga_default-g2cba65b.zip"
                moz-do-not-send=3D"true">
https://files.ettus.com/binaries/cache/e3xx/uhd-2cba65b/e3xx_e320_fpga_de=
fault-g2cba65b.zip</a>!</em></div>
          <div><em>20729 kB / 20729 kB (100%)
              n3xx_n310_fpga_default-g2cba65b.zip</em></div>
          <div><em>[ERROR] Downloaded SHA256 does not match manifest for
              <a class=3D"moz-txt-link-freetext"
href=3D"https://files.ettus.com/binaries/cache/n3xx/uhd-2cba65b/n3xx_n310=
_fpga_default-g2cba65b.zip"
                moz-do-not-send=3D"true">
https://files.ettus.com/binaries/cache/n3xx/uhd-2cba65b/n3xx_n310_fpga_de=
fault-g2cba65b.zip</a>!</em></div>
          <div><em>14345 kB / 14345 kB (100%)
              n3xx_n300_fpga_default-g2cba65b.zip</em></div>
          <div><em>[ERROR] Downloaded SHA256 does not match manifest for
              <a class=3D"moz-txt-link-freetext"
href=3D"https://files.ettus.com/binaries/cache/n3xx/uhd-2cba65b/n3xx_n300=
_fpga_default-g2cba65b.zip"
                moz-do-not-send=3D"true">
https://files.ettus.com/binaries/cache/n3xx/uhd-2cba65b/n3xx_n300_fpga_de=
fault-g2cba65b.zip</a>!</em></div>
          <div><em>27285 kB / 27285 kB (100%)
              n3xx_n320_fpga_default-g2cba65b.zip</em></div>
          <div><em>[ERROR] Downloaded SHA256 does not match manifest for
              <a class=3D"moz-txt-link-freetext"
href=3D"https://files.ettus.com/binaries/cache/n3xx/uhd-2cba65b/n3xx_n320=
_fpga_default-g2cba65b.zip"
                moz-do-not-send=3D"true">
https://files.ettus.com/binaries/cache/n3xx/uhd-2cba65b/n3xx_n320_fpga_de=
fault-g2cba65b.zip</a>!</em></div>
          <div><br>
          </div>
          <div>What can I do to solve that problem?<br>
          </div>
          <p><br>
          </p>
          <p><br>
          </p>
          <p>Any help would be more than welcome!<br>
          </p>
          <p><br>
          </p>
          <p>Thanks,<br>
          </p>
          <p><br>
          </p>
          <p>BR,<br>
          </p>
          <p><br>
          </p>
          <p>Anton=C2=A0<br>
          </p>
        </blockquote>
        What type of USRP?=C2=A0 Are you running this on the device itsel=
f,
        or over a network connection?=C2=A0 If over a network connection,
        what type of connection?<br>
        =C2=A0 <br>
        <br>
        The SHA256 errors means that there's a problem with the
        repository, or that your access to the repository is corrupting
        files, or they're being corrupted on<br>
        =C2=A0 your system as they arrive.=C2=A0=C2=A0 I haven't *heard* =
that the
        repository has any problems for that release of UHD.<br>
        <br>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------rQWxS1HwUDph5gVXsT2ZV8Gv--

--===============7934282568222670241==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7934282568222670241==--
