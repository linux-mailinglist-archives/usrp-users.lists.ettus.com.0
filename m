Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0C9413412
	for <lists+usrp-users@lfdr.de>; Tue, 21 Sep 2021 15:30:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A39AB383DC0
	for <lists+usrp-users@lfdr.de>; Tue, 21 Sep 2021 09:30:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VkkEPPEU";
	dkim-atps=neutral
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 918CB383B6C
	for <usrp-users@lists.ettus.com>; Tue, 21 Sep 2021 09:28:28 -0400 (EDT)
Received: by mail-qk1-f171.google.com with SMTP id t4so54576761qkb.9
        for <usrp-users@lists.ettus.com>; Tue, 21 Sep 2021 06:28:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=Dfsig00ONOg6FIPGXfn03R536HVgW1g407uOt3d3e9w=;
        b=VkkEPPEUTbslx9EH4yiPg29Jn1+LUKSrQGLu3Z+5LsbSSdx7j8feN5tgebWx9UzrWs
         CxOX/TJIhLkkbHw6+s8t4GAaCN+hfx8pLN2xobpwbwOru4Ij6N4supcP7hB6f8O7csrh
         Fum40lYckmcOJ6ygR63hfblZ7mCFi5SKJ3Sf/n8qBdb7+W1EkU4tWvsULorbtX0w7mXc
         YK03uhgYw+NxwczLMy0HIw1CRpE5d+xNRazjwamdkTl+7ZnsbVisNOedfMeoVRmP1qvX
         vszzlUjgFRFpj4VzTrmdnRutYypbePZKnlIHZ8/qbOnGmuOtW5mW90JvgOVHEVC0pcOw
         8b5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=Dfsig00ONOg6FIPGXfn03R536HVgW1g407uOt3d3e9w=;
        b=FnhgDzHeevgPQTW9r75PIsmv/KYvLZwBbZvq1Gw5O0cW8FcU6l9vqaWQMItB9vpolv
         gq9TT52gPJ+PGmKG+5z/43eTVdaJ48ZtGV27WHQl6kCecMTK1yZnmHAZDq5czrM/4Y2/
         tIYhctAeCm2aONcMCdWu+sbacDKx9vuWq2FWEDAB5/PjbyVa0Mymr8kfkbqXSj3of/ZF
         1Gxb4fZL/Gbs0+mQVg9m3RpmL0f2BELRulDfcrHVuD8Es7leM18+4T40HwXF0fGkX8te
         ZqETRiv/1b42wcZocFj1QeC9PWsWDVhgix1+j/Oa+B3oEasAeXkR2ORgxlovmw9gc0/e
         87sA==
X-Gm-Message-State: AOAM532pSBRN8JrdwP5VE6JFqYAS1t5isPS7ls6Z9yzNljzrSGTEU4Ly
	cpsRUkI2SM4sGzq5xHpv17kmExTshlDhkA==
X-Google-Smtp-Source: ABdhPJwsvhf+iTUVbkiomYiTFgxxlxh8BCmJmA71cCNsaF9WW3YuCFvy3ndeTLxkhIZqurhGGimPZg==
X-Received: by 2002:a37:9a12:: with SMTP id c18mr21380693qke.218.1632230907679;
        Tue, 21 Sep 2021 06:28:27 -0700 (PDT)
Received: from [192.168.2.227] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id g1sm4160311qtj.22.2021.09.21.06.28.26
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Sep 2021 06:28:27 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <0iooohSq9TbHZSLXKDBXG5xCaOwbbn3oEazOow3Erzk@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <91388fbd-6ebf-5bfa-7992-eea85c78e935@gmail.com>
Date: Tue, 21 Sep 2021 09:28:25 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <0iooohSq9TbHZSLXKDBXG5xCaOwbbn3oEazOow3Erzk@lists.ettus.com>
Content-Language: en-US
Message-ID-Hash: 2BUCSSSDXP6EUFKTZKB2JF3IF434S4M3
X-Message-ID-Hash: 2BUCSSSDXP6EUFKTZKB2JF3IF434S4M3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Create two stream with python UHD
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2BUCSSSDXP6EUFKTZKB2JF3IF434S4M3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1985403185495345015=="

This is a multi-part message in MIME format.
--===============1985403185495345015==
Content-Type: multipart/alternative;
 boundary="------------8FA54323C0118B69AD636F15"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------8FA54323C0118B69AD636F15
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2021-09-21 3:11 a.m., christophe.grimault@novagrid.com wrote:
>
>
> uhd_config_info --version
>
> UHD 4.1.0.HEAD-0-g96032d06
>
>
> uhd_usrp_probe
>
> [INFO] [UHD] linux; GNU C++ version 10.3.1 20210422 (Red Hat 
> 10.3.1-1); Boost_106900; UHD_4.1.0.HEAD-0-g96032d06
>
> [INFO] [USRP2] Opening a USRP2/N-Series device...
>
> [INFO] [USRP2] Current recv frame size: 1472 bytes
>
> [INFO] [USRP2] Current send frame size: 1472 bytes
>
> _____________________________________________________
>
> /
>
> | Device: USRP2 / N-Series Device
>
> | _____________________________________________________
>
> | /
>
> | | Mboard: N210r4
>
> | | hardware: 2577
>
> | | mac-addr: 00:80:2f:0a:d6:80
>
> | | ip-addr: 10.0.0.2
>
> | | subnet: 255.255.255.0
>
> | | gateway: 0.0.0.0
>
> | | gpsdo: internal
>
> | | serial: F396E8
>
> | | name: N210 #1
>
> | | FW Version: 12.4
>
> | | FPGA Version: 11.1
>
> | |
>
> | | Time sources: none, external, _external_, mimo
>
> | | Clock sources: internal, external, mimo
>
> | | Sensors: mimo_locked, ref_locked
>
> | | _____________________________________________________
>
> | | /
>
> | | | RX DSP: 0
>
> | | |
>
> | | | Freq range: -50.000 to 50.000 MHz
>
> | | _____________________________________________________
>
> | | /
>
> | | | RX DSP: 1
>
> | | |
>
> | | | Freq range: -50.000 to 50.000 MHz
>
> | | _____________________________________________________
>
> | | /
>
> | | | RX Dboard: A
>
> | | | ID: LF RX (0x000f)
>
> | | | Serial: 3071C6C
>
> | | | _____________________________________________________
>
> | | | /
>
> | | | | RX Frontend: AB
>
> | | | | Name: LFRX (AB)
>
> | | | | Antennas:
>
> | | | | Sensors:
>
> | | | | Freq range: -32.000 to 32.000 MHz
>
> | | | | Gain Elements: None
>
> | | | | Bandwidth range: 64000000.0 to 64000000.0 step 0.0 Hz
>
> | | | | Connection Type: IQ
>
> | | | | Uses LO offset: No
>
> | | | _____________________________________________________
>
> | | | /
>
> | | | | RX Frontend: BA
>
> | | | | Name: LFRX (BA)
>
> | | | | Antennas:
>
> | | | | Sensors:
>
> | | | | Freq range: -32.000 to 32.000 MHz
>
> | | | | Gain Elements: None
>
> | | | | Bandwidth range: 64000000.0 to 64000000.0 step 0.0 Hz
>
> | | | | Connection Type: QI
>
> | | | | Uses LO offset: No
>
> | | | _____________________________________________________
>
> | | | /
>
> | | | | RX Frontend: A
>
> | | | | Name: LFRX (A)
>
> | | | | Antennas:
>
> | | | | Sensors:
>
> | | | | Freq range: -32.000 to 32.000 MHz
>
> | | | | Gain Elements: None
>
> | | | | Bandwidth range: 32000000.0 to 32000000.0 step 0.0 Hz
>
> | | | | Connection Type: I
>
> | | | | Uses LO offset: No
>
> | | | _____________________________________________________
>
> | | | /
>
> | | | | RX Frontend: B
>
> | | | | Name: LFRX (B)
>
> | | | | Antennas:
>
> | | | | Sensors:
>
> | | | | Freq range: -32.000 to 32.000 MHz
>
> | | | | Gain Elements: None
>
> | | | | Bandwidth range: 32000000.0 to 32000000.0 step 0.0 Hz
>
> | | | | Connection Type: Q
>
> | | | | Uses LO offset: No
>
> | | | _____________________________________________________
>
> | | | /
>
> | | | | RX Codec: A
>
> | | | | Name: ads62p44
>
> | | | | Gain range digital: 0.0 to 6.0 step 0.5 dB
>
> | | | | Gain range fine: 0.0 to 0.5 step 0.1 dB
>
> | | _____________________________________________________
>
> | | /
>
> | | | TX DSP: 0
>
> | | |
>
> | | | Freq range: -200.000 to 200.000 MHz
>
> | | _____________________________________________________
>
> | | /
>
> | | | TX Dboard: A
>
> | | | _____________________________________________________
>
> | | | /
>
> | | | | TX Frontend: 0
>
> | | | | Name: Unknown (0xffff) - 0
>
> | | | | Antennas:
>
> | | | | Sensors:
>
> | | | | Freq range: 0.000 to 0.000 MHz
>
> | | | | Gain Elements: None
>
> | | | | Bandwidth range: 0.0 to 0.0 step 0.0 Hz
>
> | | | | Connection Type: IQ
>
> | | | | Uses LO offset: No
>
> | | | _____________________________________________________
>
> | | | /
>
> | | | | TX Codec: A
>
> | | | | Name: ad9777
>
> | | | | Gain Elements: None
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
I tried a dual-stream configuration with Gnu Radio and UHD 3.15, using 
"A:B A:B" with two different tuned frequencies, and it worked just fine.

I would use a single dual-channel stream, and pick apart the two 
channels yourself--which is what Gnu Radio is doing.

I also used rx_multi_samples UHD example--it also configures as a single 
multi-channel stream.



--------------8FA54323C0118B69AD636F15
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2021-09-21 3:11 a.m.,
      <a class="moz-txt-link-abbreviated" href="mailto:christophe.grimault@novagrid.com">christophe.grimault@novagrid.com</a> wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:0iooohSq9TbHZSLXKDBXG5xCaOwbbn3oEazOow3Erzk@lists.ettus.com">
      <meta http-equiv="content-type" content="text/html;
        charset=windows-1252">
      <p><br>
      </p>
      <p>uhd_config_info --version</p>
      <p>UHD 4.1.0.HEAD-0-g96032d06</p>
      <p><br>
      </p>
      <p>uhd_usrp_probe</p>
      <p>[INFO] [UHD] linux; GNU C++ version 10.3.1 20210422 (Red Hat
        10.3.1-1); Boost_106900; UHD_4.1.0.HEAD-0-g96032d06</p>
      <p>[INFO] [USRP2] Opening a USRP2/N-Series device...</p>
      <p>[INFO] [USRP2] Current recv frame size: 1472 bytes</p>
      <p>[INFO] [USRP2] Current send frame size: 1472 bytes</p>
      <p> _____________________________________________________</p>
      <p> /</p>
      <p>| Device: USRP2 / N-Series Device</p>
      <p>| _____________________________________________________</p>
      <p>| /</p>
      <p>| | Mboard: N210r4</p>
      <p>| | hardware: 2577</p>
      <p>| | mac-addr: 00:80:2f:0a:d6:80</p>
      <p>| | ip-addr: 10.0.0.2</p>
      <p>| | subnet: 255.255.255.0</p>
      <p>| | gateway: 0.0.0.0</p>
      <p>| | gpsdo: internal</p>
      <p>| | serial: F396E8</p>
      <p>| | name: N210 #1</p>
      <p>| | FW Version: 12.4</p>
      <p>| | FPGA Version: 11.1</p>
      <p>| | </p>
      <p>| | Time sources: none, external, _external_, mimo</p>
      <p>| | Clock sources: internal, external, mimo</p>
      <p>| | Sensors: mimo_locked, ref_locked</p>
      <p>| | _____________________________________________________</p>
      <p>| | /</p>
      <p>| | | RX DSP: 0</p>
      <p>| | | </p>
      <p>| | | Freq range: -50.000 to 50.000 MHz</p>
      <p>| | _____________________________________________________</p>
      <p>| | /</p>
      <p>| | | RX DSP: 1</p>
      <p>| | | </p>
      <p>| | | Freq range: -50.000 to 50.000 MHz</p>
      <p>| | _____________________________________________________</p>
      <p>| | /</p>
      <p>| | | RX Dboard: A</p>
      <p>| | | ID: LF RX (0x000f)</p>
      <p>| | | Serial: 3071C6C</p>
      <p>| | | _____________________________________________________</p>
      <p>| | | /</p>
      <p>| | | | RX Frontend: AB</p>
      <p>| | | | Name: LFRX (AB)</p>
      <p>| | | | Antennas: </p>
      <p>| | | | Sensors: </p>
      <p>| | | | Freq range: -32.000 to 32.000 MHz</p>
      <p>| | | | Gain Elements: None</p>
      <p>| | | | Bandwidth range: 64000000.0 to 64000000.0 step 0.0 Hz</p>
      <p>| | | | Connection Type: IQ</p>
      <p>| | | | Uses LO offset: No</p>
      <p>| | | _____________________________________________________</p>
      <p>| | | /</p>
      <p>| | | | RX Frontend: BA</p>
      <p>| | | | Name: LFRX (BA)</p>
      <p>| | | | Antennas: </p>
      <p>| | | | Sensors: </p>
      <p>| | | | Freq range: -32.000 to 32.000 MHz</p>
      <p>| | | | Gain Elements: None</p>
      <p>| | | | Bandwidth range: 64000000.0 to 64000000.0 step 0.0 Hz</p>
      <p>| | | | Connection Type: QI</p>
      <p>| | | | Uses LO offset: No</p>
      <p>| | | _____________________________________________________</p>
      <p>| | | /</p>
      <p>| | | | RX Frontend: A</p>
      <p>| | | | Name: LFRX (A)</p>
      <p>| | | | Antennas: </p>
      <p>| | | | Sensors: </p>
      <p>| | | | Freq range: -32.000 to 32.000 MHz</p>
      <p>| | | | Gain Elements: None</p>
      <p>| | | | Bandwidth range: 32000000.0 to 32000000.0 step 0.0 Hz</p>
      <p>| | | | Connection Type: I</p>
      <p>| | | | Uses LO offset: No</p>
      <p>| | | _____________________________________________________</p>
      <p>| | | /</p>
      <p>| | | | RX Frontend: B</p>
      <p>| | | | Name: LFRX (B)</p>
      <p>| | | | Antennas: </p>
      <p>| | | | Sensors: </p>
      <p>| | | | Freq range: -32.000 to 32.000 MHz</p>
      <p>| | | | Gain Elements: None</p>
      <p>| | | | Bandwidth range: 32000000.0 to 32000000.0 step 0.0 Hz</p>
      <p>| | | | Connection Type: Q</p>
      <p>| | | | Uses LO offset: No</p>
      <p>| | | _____________________________________________________</p>
      <p>| | | /</p>
      <p>| | | | RX Codec: A</p>
      <p>| | | | Name: ads62p44</p>
      <p>| | | | Gain range digital: 0.0 to 6.0 step 0.5 dB</p>
      <p>| | | | Gain range fine: 0.0 to 0.5 step 0.1 dB</p>
      <p>| | _____________________________________________________</p>
      <p>| | /</p>
      <p>| | | TX DSP: 0</p>
      <p>| | | </p>
      <p>| | | Freq range: -200.000 to 200.000 MHz</p>
      <p>| | _____________________________________________________</p>
      <p>| | /</p>
      <p>| | | TX Dboard: A</p>
      <p>| | | _____________________________________________________</p>
      <p>| | | /</p>
      <p>| | | | TX Frontend: 0</p>
      <p>| | | | Name: Unknown (0xffff) - 0</p>
      <p>| | | | Antennas: </p>
      <p>| | | | Sensors: </p>
      <p>| | | | Freq range: 0.000 to 0.000 MHz</p>
      <p>| | | | Gain Elements: None</p>
      <p>| | | | Bandwidth range: 0.0 to 0.0 step 0.0 Hz</p>
      <p>| | | | Connection Type: IQ</p>
      <p>| | | | Uses LO offset: No</p>
      <p>| | | _____________________________________________________</p>
      <p>| | | /</p>
      <p>| | | | TX Codec: A</p>
      <p>| | | | Name: ad9777</p>
      <p>| | | | Gain Elements: None</p>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    I tried a dual-stream configuration with Gnu Radio and UHD 3.15,
    using "A:B A:B" with two different tuned frequencies, and it worked
    just fine.<br>
    <br>
    I would use a single dual-channel stream, and pick apart the two
    channels yourself--which is what Gnu Radio is doing.<br>
    <br>
    I also used rx_multi_samples UHD example--it also configures as a
    single multi-channel stream.<br>
    <br>
    <br>
  </body>
</html>

--------------8FA54323C0118B69AD636F15--

--===============1985403185495345015==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1985403185495345015==--
