Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 58BC54B1266
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 17:11:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 672E03845DF
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 11:11:24 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SUaXl+Pb";
	dkim-atps=neutral
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 7029538419A
	for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 11:03:13 -0500 (EST)
Received: by mail-qk1-f177.google.com with SMTP id o10so5316218qkg.0
        for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 08:03:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=ZBoYjRxmEzPrnMk+q9rORTsYGx7dEMELn0QkGpwP/7I=;
        b=SUaXl+PbvQ3EtrNPg7Iw9Gi5AaSlpB/70xzk00GK58IIswPbBg9tplAbxeHprq8zeS
         0mclRtTh4HfQ4JZaeh1LZb54dZ9yd0pFpKTA/G2YLyb7pD2So0UakXXYiRNp1crUYsV0
         Vq1Oe8hUER7L6BxA4YkBcAD01uP+9TLJYuhMjsO7kihoQTl4HCg22gkEuKbT+aFUa62M
         XXax7aOvHzH6lhW3tMxH6tSxy3ru/grrxK1wAUcmUHUo6g804NpjFtnM6V1BISZNUAow
         Sp89c/PvRHbfa8IQYR2avHORbksyOOXJ1yAial+4kcCMA6rx8RPd0XG75jstp00mQ2Bo
         2Gdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=ZBoYjRxmEzPrnMk+q9rORTsYGx7dEMELn0QkGpwP/7I=;
        b=k7wgE7NlKNVtXVMifihnjHgjJwr9oB/jHUj0Hee0+oAsrK2uVSvQtoU+n5Tn9ofaCM
         a+byUNGyNkaFJ9GMfsQSfNJIcsubPbFHB5KpBzkYqWNjV7aIYphLvfuA/629I1SHvg4N
         39Sx7X/0+bo7SIwZ+SQu6QMNoD9/fWYnwPvzeXSdHldNUBWvmlo9sYX5ltiON8XtdG5E
         M+hOmSv4cIO9QUW5n/6KvuEIgt40PnM44n2tgE60nhc5wkt29zWOHrNq+evspTrXcmTt
         uT1Ibj2Dww2DCuzaBdkkbtG8SdxGEtCIynapQGJmdjA2hEcla5ji0xjvdXgYgoIGjlay
         2JOg==
X-Gm-Message-State: AOAM533J6LH2cbnG7xjFQ31zS7wzs3P/oHmxgP65CgGII+ETBao8Uqmp
	5zHSrS3ARosjYkihQsdn3iWa2ENCGRPB8A==
X-Google-Smtp-Source: ABdhPJxxT/KFtWD/JG+9FnLb2giF9LgFMDpYb0vLGcim//x2ZPgK1JS7+3xk9HRwLw1723qz/p5F9Q==
X-Received: by 2002:a05:620a:280b:: with SMTP id f11mr4078920qkp.59.1644508992484;
        Thu, 10 Feb 2022 08:03:12 -0800 (PST)
Received: from [192.168.2.223] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id 13sm11188505qtz.87.2022.02.10.08.03.11
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Feb 2022 08:03:12 -0800 (PST)
Message-ID: <8826730b-9cc0-8b8c-e0c8-f5fc164ef4b9@gmail.com>
Date: Thu, 10 Feb 2022 11:03:11 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <AM8P250MB010792CDC76C3D13D18CB1749B2F9@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <AM8P250MB010792CDC76C3D13D18CB1749B2F9@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
Message-ID-Hash: GYGYCA3OG4RUGU75LHS5OUVIYK6RUSMK
X-Message-ID-Hash: GYGYCA3OG4RUGU75LHS5OUVIYK6RUSMK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [UHD] Setting sampling rates to 500Msps is not supported.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GYGYCA3OG4RUGU75LHS5OUVIYK6RUSMK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3373986275345696765=="

This is a multi-part message in MIME format.
--===============3373986275345696765==
Content-Type: multipart/alternative;
 boundary="------------ZI10IJ0dziucQLRc40oMTehe"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ZI10IJ0dziucQLRc40oMTehe
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-02-10 07:39, Tobias Kronauer wrote:
> Dear all,
>
> recently, we purchased a X410. According to the=20
> [manual](https://www.ni.com/pdf/manuals/378493a), the USRP supports a=20
> maximum I/Q samples rate of up to 491.52 MSps. Using the UHD API=20
> however, warnings are printed to stdout that the rate is set to 245.76=20
> MSps.
>
Also:

https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_updating_fpga_typ=
es


> In the following, you can find a MWE:
>
> ```cpp
> #include <uhd/usrp/multi_usrp.hpp>
> #include <iostream>
>
> int main() {
> =C2=A0 =C2=A0 uhd::device_addr_t addr =3D uhd::device_addr_t("addr=3Dlo=
calhost");
> =C2=A0 =C2=A0 uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usr=
p::make(addr);
>
> =C2=A0 =C2=A0 usrp->set_rx_rate(491.52e6); // max. value deifned in=20
> https://www.ni.com/pdf/manuals/378493a
> =C2=A0 =C2=A0 usrp->set_tx_rate(491.52e6); // max. value deifned in=20
> https://www.ni.com/pdf/manuals/378493a
>
> =C2=A0 =C2=A0 std::cout << "Rx rates range from " <<=20
> usrp->get_rx_rates().start() << " to " <<=20
> usrp->get_rx_rates().stop()<< std::endl;
> =C2=A0 =C2=A0 std::cout << "Tx rates range from " <<=20
> usrp->get_tx_rates().start() << " to " <<=20
> usrp->get_tx_rates().stop()<< std::endl;
>
> =C2=A0 =C2=A0 std::cout << "Current rate is (rx): " << usrp->get_rx_rat=
e() <<=20
> std::endl;
> =C2=A0 =C2=A0 std::cout << "Current rate is (tx): " << usrp->get_tx_rat=
e() <<=20
> std::endl;
> }
> ```
>
> After building, the following is printed:
>
> ```bash
> root@ni-x4xx-323F74C:~/uhd-evaluation/debug/build# ./set_usrp_rates
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;=20
> UHD_4.1.0.5-0-g18f5f9a4
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
> mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F74C,fpga=3D=
X4_200,claimed=3DFalse,addr=3Dlocalhost
> [INFO] [MPM.PeriphManager] init() called with device args=20
> `fpga=3DX4_200,mgmt_addr=3D127.0.0.1,product=3Dx410,clock_source=3Dinte=
rnal,time_source=3Dinternal'.
> [WARNING] [MPM.RPCServer] A timeout event occured!
> [INFO] [MPM.PeriphManager] init() called with device args=20
> `fpga=3DX4_200,mgmt_addr=3D127.0.0.1,product=3Dx410,clock_source=3Dinte=
rnal,time_source=3Dinternal'.
> [WARNING] [MULTI_USRP] Could not set RX rate to 491.520 MHz. Actual=20
> rate is 245.760 MHz
> [WARNING] [MULTI_USRP] Could not set RX rate to 491.520 MHz. Actual=20
> rate is 245.760 MHz
> [WARNING] [MULTI_USRP] Could not set RX rate to 491.520 MHz. Actual=20
> rate is 245.760 MHz
> [WARNING] [MULTI_USRP] Could not set RX rate to 491.520 MHz. Actual=20
> rate is 245.760 MHz
> [WARNING] [MULTI_USRP] Could not set TX rate to 491.520 MHz. Actual=20
> rate is 245.760 MHz
> [WARNING] [MULTI_USRP] Could not set TX rate to 491.520 MHz. Actual=20
> rate is 245.760 MHz
> [WARNING] [MULTI_USRP] Could not set TX rate to 491.520 MHz. Actual=20
> rate is 245.760 MHz
> [WARNING] [MULTI_USRP] Could not set TX rate to 491.520 MHz. Actual=20
> rate is 245.760 MHz
> Rx rates range from 240941 to 2.4576e+08
> Tx rates range from 240941 to 2.4576e+08
> Current rate is (rx): 2.4576e+08
> Current rate is (tx): 2.4576e+08
> ```
>
> The same can be observed using the `txrx_loopback_to_file` example.=20
> Can you help me on that? Thank you in advance =F0=9F=99=82
>
> **Version information**:
>
> ```bash
> root@ni-x4xx-323F74C:/usr/lib/uhd/examples# uhd_config_info --print-all
> UHD 4.1.0.5-0-g18f5f9a4
> Build date: Mon, 06 Dec 2021 19:14:55
> C compiler: GNU 9.2.0
> C++ compiler: GNU 9.2.0
> C flags: -DBOOST_ERROR_CODE_HEADER_ONLY=20
> -DBOOST_ASIO_DISABLE_STD_STRING_VIEW=20
> -DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRING_VIEW -DHAVE_CONFIG_H=20
> -DUHD_LOG_MIN_LEVEL=3D1 -DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVE=
L=3D2=20
> -DUHD_LOG_CONSOLE_COLOR=20
> =C2=A0--sysroot=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd/4.=
1.0.5+rc2-r0/recipe-sysroot=20
> =C2=A0-O2 -pipe -g -feliminate-unused-debug-types=20
> -fmacro-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd=
/4.1.0.5+rc2-r0=3D/usr/src/debug/uhd/4.1.0.5+rc2-r0=20
> =C2=A0-fdebug-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-lin=
ux/uhd/4.1.0.5+rc2-r0=3D/usr/src/debug/uhd/4.1.0.5+rc2-r0=20
> =C2=A0-fdebug-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-lin=
ux/uhd/4.1.0.5+rc2-r0/recipe-sysroot=3D=20
> =C2=A0-fdebug-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-lin=
ux/uhd/4.1.0.5+rc2-r0/recipe-sysroot-native=3D=20
> =C2=A0--sysroot=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd/4.=
1.0.5+rc2-r0/recipe-sysroot
> C++ flags: -DBOOST_ERROR_CODE_HEADER_ONLY=20
> -DBOOST_ASIO_DISABLE_STD_STRING_VIEW=20
> -DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRING_VIEW -DHAVE_CONFIG_H=20
> -DUHD_LOG_MIN_LEVEL=3D1 -DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVE=
L=3D2=20
> -DUHD_LOG_CONSOLE_COLOR=20
> =C2=A0--sysroot=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd/4.=
1.0.5+rc2-r0/recipe-sysroot=20
> =C2=A0-O2 -pipe -g -feliminate-unused-debug-types=20
> -fmacro-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd=
/4.1.0.5+rc2-r0=3D/usr/src/debug/uhd/4.1.0.5+rc2-r0=20
> =C2=A0-fdebug-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-lin=
ux/uhd/4.1.0.5+rc2-r0=3D/usr/src/debug/uhd/4.1.0.5+rc2-r0=20
> =C2=A0-fdebug-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-lin=
ux/uhd/4.1.0.5+rc2-r0/recipe-sysroot=3D=20
> =C2=A0-fdebug-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-lin=
ux/uhd/4.1.0.5+rc2-r0/recipe-sysroot-native=3D=20
> =C2=A0-fvisibility-inlines-hidden=20
> --sysroot=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd/4.1.0.5+=
rc2-r0/recipe-sysroot=20
> -fvisibility=3Dhidden -fvisibility-inlines-hidden
> Enabled components: LibUHD, LibUHD - C API, LibUHD - Python API,=20
> Examples, Utils, Tests, MPMD, N300, N320, E320, E300, X400, OctoClock
> Install prefix: /usr
> Boost version: 1.71
> Libusb version: N/A
> Library path: /usr/lib
> Package path: /usr
> Images directory: /usr/share/uhd/images
> ABI version string: 4.1.0
> ```
>
> Kind regards,
> Tobias
>
>
>
> *Barkhausen Institut*
> www.barkhauseninstitut.org
>
> Barkhausen Institut gGmbH | Sitz: W=C3=BCrzburger Stra=C3=9Fe 46, 01187=
 Dresden,=20
> Germany | Registergericht: Amtsgericht Dresden, HRB 37267 |=20
> Gesch=C3=A4ftsf=C3=BChrer: Prof. Dr. Gerhard Fettweis, Dr. Tim Hentsche=
l |=20
> Vorsitzender der Gesellschafterdelegation: Dr. Andreas Handschuh
>
> Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie=20
> unter: https://barkhauseninstitut.org/data-privacy
>
> This email and any attachments are intended only for the person to=20
> whom this email is addressed and may contain confidential and/or=20
> privileged information. If you received this email in error, please do=20
> not disclose the contents to anyone, but notify the sender by return=20
> email and delete this email (and any attachments) from your system.=20
> Information on data protection and processing of your personal=20
> information: https://barkhauseninstitut.org/data-privacy
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------ZI10IJ0dziucQLRc40oMTehe
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-02-10 07:39, Tobias Kronauer
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:AM8P250MB010792CDC76C3D13D18CB1749B2F9@AM8P250MB0107.EURP250.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <div
style=3D"color:black;font-size:12pt;font-family:Calibri,Arial,Helvetica,s=
ans-serif">Dear
          all, </div>
        <div
style=3D"color:black;font-size:12pt;font-family:Calibri,Arial,Helvetica,s=
ans-serif">
          <div><br>
          </div>
          <div>recently, we purchased a X410. According to the
            [manual](<a class=3D"moz-txt-link-freetext" href=3D"https://w=
ww.ni.com/pdf/manuals/378493a">https://www.ni.com/pdf/manuals/378493a</a>=
), the USRP
            supports a maximum I/Q samples rate of up to 491.52 MSps.
            Using the UHD API however, warnings are printed to stdout
            that the rate is set to 245.76 MSps.</div>
          <div><br>
          </div>
        </div>
      </div>
    </blockquote>
    Also:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/manual=
/page_usrp_x4xx.html#x4xx_updating_fpga_types">https://files.ettus.com/ma=
nual/page_usrp_x4xx.html#x4xx_updating_fpga_types</a><br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:AM8P250MB010792CDC76C3D13D18CB1749B2F9@AM8P250MB0107.EURP250.=
PROD.OUTLOOK.COM">
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <div
style=3D"color:black;font-size:12pt;font-family:Calibri,Arial,Helvetica,s=
ans-serif">
          <div>
          </div>
          <div>In the following, you can find a MWE:</div>
          <div><br>
          </div>
          <div>```cpp</div>
          <div>#include &lt;uhd/usrp/multi_usrp.hpp&gt;</div>
          <div>#include &lt;iostream&gt;</div>
          <div><br>
          </div>
          <div>int main() {</div>
          <div>=C2=A0 =C2=A0 uhd::device_addr_t addr =3D
            uhd::device_addr_t("addr=3Dlocalhost");</div>
          <div>=C2=A0 =C2=A0 uhd::usrp::multi_usrp::sptr usrp =3D
            uhd::usrp::multi_usrp::make(addr);</div>
          <div><br>
          </div>
          <div>=C2=A0 =C2=A0 usrp-&gt;set_rx_rate(491.52e6); // max. valu=
e deifned
            in <a class=3D"moz-txt-link-freetext" href=3D"https://www.ni.=
com/pdf/manuals/378493a">https://www.ni.com/pdf/manuals/378493a</a></div>
          <div>=C2=A0 =C2=A0 usrp-&gt;set_tx_rate(491.52e6); // max. valu=
e deifned
            in <a class=3D"moz-txt-link-freetext" href=3D"https://www.ni.=
com/pdf/manuals/378493a">https://www.ni.com/pdf/manuals/378493a</a></div>
          <div><br>
          </div>
          <div>=C2=A0 =C2=A0 std::cout &lt;&lt; "Rx rates range from " &l=
t;&lt;
            usrp-&gt;get_rx_rates().start() &lt;&lt; " to " &lt;&lt;
            usrp-&gt;get_rx_rates().stop()&lt;&lt; std::endl;</div>
          <div>=C2=A0 =C2=A0 std::cout &lt;&lt; "Tx rates range from " &l=
t;&lt;
            usrp-&gt;get_tx_rates().start() &lt;&lt; " to " &lt;&lt;
            usrp-&gt;get_tx_rates().stop()&lt;&lt; std::endl;</div>
          <div><br>
          </div>
          <div>=C2=A0 =C2=A0 std::cout &lt;&lt; "Current rate is (rx): " =
&lt;&lt;
            usrp-&gt;get_rx_rate() &lt;&lt; std::endl;</div>
          <div>=C2=A0 =C2=A0 std::cout &lt;&lt; "Current rate is (tx): " =
&lt;&lt;
            usrp-&gt;get_tx_rate() &lt;&lt; std::endl;</div>
          <div>}</div>
          <div>```</div>
          <div><br>
          </div>
          <div>After building, the following is printed:</div>
          <div><br>
          </div>
          <div>```bash</div>
          <div>root@ni-x4xx-323F74C:~/uhd-evaluation/debug/build#
            ./set_usrp_rates </div>
          <div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
            UHD_4.1.0.5-0-g18f5f9a4</div>
          <div>[INFO] [MPMD] Initializing 1 device(s) in parallel with
            args:
mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F74C,fpga=3D=
X4_200,claimed=3DFalse,addr=3Dlocalhost</div>
          <div>[INFO] [MPM.PeriphManager] init() called with device args
`fpga=3DX4_200,mgmt_addr=3D127.0.0.1,product=3Dx410,clock_source=3Dintern=
al,time_source=3Dinternal'.</div>
          <div>[WARNING] [MPM.RPCServer] A timeout event occured!</div>
          <div>[INFO] [MPM.PeriphManager] init() called with device args
`fpga=3DX4_200,mgmt_addr=3D127.0.0.1,product=3Dx410,clock_source=3Dintern=
al,time_source=3Dinternal'.</div>
          <div>[WARNING] [MULTI_USRP] Could not set RX rate to 491.520
            MHz. Actual rate is 245.760 MHz</div>
          <div>[WARNING] [MULTI_USRP] Could not set RX rate to 491.520
            MHz. Actual rate is 245.760 MHz</div>
          <div>[WARNING] [MULTI_USRP] Could not set RX rate to 491.520
            MHz. Actual rate is 245.760 MHz</div>
          <div>[WARNING] [MULTI_USRP] Could not set RX rate to 491.520
            MHz. Actual rate is 245.760 MHz</div>
          <div>[WARNING] [MULTI_USRP] Could not set TX rate to 491.520
            MHz. Actual rate is 245.760 MHz</div>
          <div>[WARNING] [MULTI_USRP] Could not set TX rate to 491.520
            MHz. Actual rate is 245.760 MHz</div>
          <div>[WARNING] [MULTI_USRP] Could not set TX rate to 491.520
            MHz. Actual rate is 245.760 MHz</div>
          <div>[WARNING] [MULTI_USRP] Could not set TX rate to 491.520
            MHz. Actual rate is 245.760 MHz</div>
          <div>Rx rates range from 240941 to 2.4576e+08</div>
          <div>Tx rates range from 240941 to 2.4576e+08</div>
          <div>Current rate is (rx): 2.4576e+08</div>
          <div>Current rate is (tx): 2.4576e+08</div>
          <div>```</div>
          <div><br>
          </div>
          <div>The same can be observed using the
            `txrx_loopback_to_file` example. Can you help me on that?
            Thank you in advance
            <span id=3D"=F0=9F=99=82" contenteditable=3D"false">=F0=9F=99=
=82</span><br>
          </div>
          <div><br>
          </div>
          <div>**Version information**:</div>
          <div><br>
          </div>
          <div>```bash</div>
          <div>root@ni-x4xx-323F74C:/usr/lib/uhd/examples#
            uhd_config_info --print-all</div>
          <div>UHD 4.1.0.5-0-g18f5f9a4</div>
          <div>Build date: Mon, 06 Dec 2021 19:14:55</div>
          <div>C compiler: GNU 9.2.0</div>
          <div>C++ compiler: GNU 9.2.0</div>
          <div>C flags: -DBOOST_ERROR_CODE_HEADER_ONLY
            -DBOOST_ASIO_DISABLE_STD_STRING_VIEW
            -DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRING_VIEW
            -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1
            -DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2
            -DUHD_LOG_CONSOLE_COLOR
=C2=A0--sysroot=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd/4.1.=
0.5+rc2-r0/recipe-sysroot
            =C2=A0-O2 -pipe -g -feliminate-unused-debug-types
-fmacro-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd/4=
.1.0.5+rc2-r0=3D/usr/src/debug/uhd/4.1.0.5+rc2-r0
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0
=C2=A0-fdebug-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux=
/uhd/4.1.0.5+rc2-r0=3D/usr/src/debug/uhd/4.1.0.5+rc2-r0
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0
=C2=A0-fdebug-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux=
/uhd/4.1.0.5+rc2-r0/recipe-sysroot=3D
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0
=C2=A0-fdebug-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux=
/uhd/4.1.0.5+rc2-r0/recipe-sysroot-native=3D
            =C2=A0
=C2=A0--sysroot=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd/4.1.=
0.5+rc2-r0/recipe-sysroot</div>
          <div>C++ flags: -DBOOST_ERROR_CODE_HEADER_ONLY
            -DBOOST_ASIO_DISABLE_STD_STRING_VIEW
            -DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRING_VIEW
            -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1
            -DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2
            -DUHD_LOG_CONSOLE_COLOR
=C2=A0--sysroot=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd/4.1.=
0.5+rc2-r0/recipe-sysroot
            =C2=A0-O2 -pipe -g -feliminate-unused-debug-types
-fmacro-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd/4=
.1.0.5+rc2-r0=3D/usr/src/debug/uhd/4.1.0.5+rc2-r0
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0
=C2=A0-fdebug-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux=
/uhd/4.1.0.5+rc2-r0=3D/usr/src/debug/uhd/4.1.0.5+rc2-r0
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0
=C2=A0-fdebug-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux=
/uhd/4.1.0.5+rc2-r0/recipe-sysroot=3D
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0
=C2=A0-fdebug-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux=
/uhd/4.1.0.5+rc2-r0/recipe-sysroot-native=3D
            =C2=A0-fvisibility-inlines-hidden =C2=A0
--sysroot=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd/4.1.0.5+rc=
2-r0/recipe-sysroot
            -fvisibility=3Dhidden -fvisibility-inlines-hidden</div>
          <div>Enabled components: LibUHD, LibUHD - C API, LibUHD -
            Python API, Examples, Utils, Tests, MPMD, N300, N320, E320,
            E300, X400, OctoClock</div>
          <div>Install prefix: /usr</div>
          <div>Boost version: 1.71</div>
          <div>Libusb version: N/A</div>
          <div>Library path: /usr/lib</div>
          <div>Package path: /usr</div>
          <div>Images directory: /usr/share/uhd/images</div>
          <div>ABI version string: 4.1.0</div>
          ```</div>
        <div
style=3D"color:black;font-size:12pt;font-family:Calibri,Arial,Helvetica,s=
ans-serif"><br>
        </div>
        <div
style=3D"color:black;font-size:12pt;font-family:Calibri,Arial,Helvetica,s=
ans-serif">Kind
          regards,</div>
        <span
style=3D"color:black;font-size:12pt;font-family:Calibri,Arial,Helvetica,s=
ans-serif">Tobia</span>s<br>
      </div>
      <div>
        <p style=3D"font-size: 11pt; font-family: Calibri, sans-serif,
          serif, &quot;EmojiFont&quot;; margin: 0px;">
          <br>
          <br>
          <b>Barkhausen Institut</b> <br>
          <a class=3D"moz-txt-link-abbreviated" href=3D"http://www.barkha=
useninstitut.org">www.barkhauseninstitut.org</a> <br>
          <br>
        </p>
        <p style=3D"font-size: 11pt; font-family: Calibri, sans-serif,
          serif, &quot;EmojiFont&quot;; margin: 0px;">
          <span style=3D"font-size:9pt;" lang=3D"de-DE">Barkhausen Instit=
ut
            gGmbH | Sitz: W=C3=BCrzburger Stra=C3=9Fe 46, 01187 Dresden, =
Germany |
            Registergericht: Amtsgericht Dresden, HRB 37267 |
            Gesch=C3=A4ftsf=C3=BChrer: Prof. Dr. Gerhard Fettweis, Dr. Ti=
m
            Hentschel | Vorsitzender der Gesellschafterdelegation: Dr.
            Andreas Handschuh <br>
            <br>
            Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten
            finden Sie unter:
            <a class=3D"moz-txt-link-freetext" href=3D"https://barkhausen=
institut.org/data-privacy">https://barkhauseninstitut.org/data-privacy</a=
>
            <br>
            <br>
          </span><span style=3D"font-size:9pt;" lang=3D"en-US">This email
            and any attachments are intended only for the person to whom
            this email is addressed and may contain confidential and/or
            privileged information. If you received this email in error,
            please do not disclose the contents to anyone, but notify
            the sender by return email and delete this email (and any
            attachments) from your system. Information on data
            protection and processing of your personal information:
            <a class=3D"moz-txt-link-freetext" href=3D"https://barkhausen=
institut.org/data-privacy">https://barkhauseninstitut.org/data-privacy</a=
>
            <br>
            <br>
          </span></p>
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

--------------ZI10IJ0dziucQLRc40oMTehe--

--===============3373986275345696765==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3373986275345696765==--
