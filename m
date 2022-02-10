Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E784B12CD
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 17:32:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 81017385576
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 11:32:57 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="ZWHe6AN7";
	dkim-atps=neutral
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 4F4AA385098
	for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 11:31:58 -0500 (EST)
Received: by mail-yb1-f175.google.com with SMTP id x136so15283862ybe.11
        for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 08:31:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=L+PlSmVFhp3rugwbB31TEZDDS/07vbKAX5xyY39VlAw=;
        b=ZWHe6AN7djCyM2OBl7wpmsnnPU5EcIrvybaCxMVeIsmwMV2y3LZCcO3YNGQK+5GEv5
         bvjM/LWVnnwljVD75QTUjur+NbRMVQ0sgRm4hDG939kWEiYftbMmUs9QC5DmYjUfVirS
         B+MxAwUq5Pu7omrbD/+r4WxQTTC3U/xt+QbLoefD/oR+Ds1X5qk/j9WSni0oPHT0GDWJ
         W1uUetkj/Mf3OHg1FzbaAd//GUB3yuwgcZ0CAe1pO632pxnp192yKe7IUaeP9smFmlWq
         tPR7Q1SG2Dwow+DoIPcV7SeHlIaloqFQ4fVoDvY3IVIWu6UadVUqNWAUd03CXButCp/Y
         zFgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=L+PlSmVFhp3rugwbB31TEZDDS/07vbKAX5xyY39VlAw=;
        b=tFVIdZsXke5zhoM/FgqYs2dKEQLbhU72Y6Ttxm/ucGnsOVwk0qFIJeB3ee+kIFDrUK
         3wpLDuxzvgv4aH3vGPgSUvbbk40u/Jq2+TzdP5Mye8yaIhuYJ3+ohHgcEQC6K+ZpMYGT
         nTVUjKBUJX0WWhShDhs4SqQOBAhXX3tspphY98b8iuSTldyJrrWc1rBxIFSxgrt9lQzQ
         vPnxGfk0XbfkdNSfyYICb8TT+tXvJw2hglO9OXTtGaGessMmsGx6gSJLH6oL/oe9M/4t
         ASEDe3kcDrSi4BWHjfcmd11KF38m+fMwut/l8H8vPW9et6r0aFn1SWKJBGPN9EuQQXOi
         wvaQ==
X-Gm-Message-State: AOAM532QmmL3W0Q5j7ea4UKMHXiFnMtTUS35D0x5PIhBtvL8zwO3ziTR
	klj7X5/ur4FcCAhQ6b4H2xgNH8aKO0a20uSzntsza3BG
X-Google-Smtp-Source: ABdhPJxdYTi45WIqkJC2MutKJBvEBpPbj+OwQcUodY0y6eq3MDAPNfhlhWVrSVhepFzFsJ6oINzoQUa79Tf7yFiutIA=
X-Received: by 2002:a25:6a06:: with SMTP id f6mr8157906ybc.193.1644510717498;
 Thu, 10 Feb 2022 08:31:57 -0800 (PST)
MIME-Version: 1.0
References: <AM8P250MB010792CDC76C3D13D18CB1749B2F9@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <8826730b-9cc0-8b8c-e0c8-f5fc164ef4b9@gmail.com>
In-Reply-To: <8826730b-9cc0-8b8c-e0c8-f5fc164ef4b9@gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 10 Feb 2022 10:31:42 -0600
Message-ID: <CAFche=iWv7J7JwoqE=naU7syiiF2bsFo4qTt9GM4i2GNLiyPMw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: XJ5QDERA6E76R6F7YG3VB74HIYWIEEPW
X-Message-ID-Hash: XJ5QDERA6E76R6F7YG3VB74HIYWIEEPW
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [UHD] Setting sampling rates to 500Msps is not supported.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XJ5QDERA6E76R6F7YG3VB74HIYWIEEPW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8448055068295275531=="

--===============8448055068295275531==
Content-Type: multipart/alternative; boundary="0000000000002570b805d7ac7dd8"

--0000000000002570b805d7ac7dd8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Tobias,

Sorry for the confusion. To get the full 491.520 MS/s you have to use a
bitstream that supports it, and it requires the 100 GbE interface to stream
at that rate. It looks like you're using the default bitstream that
supports 250 MS/s (called X4_200) and 10 GbE. The initial release of X410
didn't include support for the higher streaming rates but this is planned
for the next UHD software release, and is currently available on master.

Thanks,

Wade

On Thu, Feb 10, 2022 at 10:11 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-02-10 07:39, Tobias Kronauer wrote:
>
> Dear all,
>
> recently, we purchased a X410. According to the [manual](
> https://www.ni.com/pdf/manuals/378493a), the USRP supports a maximum I/Q
> samples rate of up to 491.52 MSps. Using the UHD API however, warnings ar=
e
> printed to stdout that the rate is set to 245.76 MSps.
>
> Also:
>
> https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_updating_fpga_typ=
es
>
>
> In the following, you can find a MWE:
>
> ```cpp
> #include <uhd/usrp/multi_usrp.hpp>
> #include <iostream>
>
> int main() {
>     uhd::device_addr_t addr =3D uhd::device_addr_t("addr=3Dlocalhost");
>     uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp::make(addr=
);
>
>     usrp->set_rx_rate(491.52e6); // max. value deifned in
> https://www.ni.com/pdf/manuals/378493a
>     usrp->set_tx_rate(491.52e6); // max. value deifned in
> https://www.ni.com/pdf/manuals/378493a
>
>     std::cout << "Rx rates range from " << usrp->get_rx_rates().start() <=
<
> " to " << usrp->get_rx_rates().stop()<< std::endl;
>     std::cout << "Tx rates range from " << usrp->get_tx_rates().start() <=
<
> " to " << usrp->get_tx_rates().stop()<< std::endl;
>
>     std::cout << "Current rate is (rx): " << usrp->get_rx_rate() <<
> std::endl;
>     std::cout << "Current rate is (tx): " << usrp->get_tx_rate() <<
> std::endl;
> }
> ```
>
> After building, the following is printed:
>
> ```bash
> root@ni-x4xx-323F74C:~/uhd-evaluation/debug/build# ./set_usrp_rates
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> UHD_4.1.0.5-0-g18f5f9a4
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F74C,fpga=3D=
X4_200,claimed=3DFalse,addr=3Dlocalhost
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=3DX4_200,mgmt_addr=3D127.0.0.1,product=3Dx410,clock_source=3Dintern=
al,time_source=3Dinternal'.
> [WARNING] [MPM.RPCServer] A timeout event occured!
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=3DX4_200,mgmt_addr=3D127.0.0.1,product=3Dx410,clock_source=3Dintern=
al,time_source=3Dinternal'.
> [WARNING] [MULTI_USRP] Could not set RX rate to 491.520 MHz. Actual rate
> is 245.760 MHz
> [WARNING] [MULTI_USRP] Could not set RX rate to 491.520 MHz. Actual rate
> is 245.760 MHz
> [WARNING] [MULTI_USRP] Could not set RX rate to 491.520 MHz. Actual rate
> is 245.760 MHz
> [WARNING] [MULTI_USRP] Could not set RX rate to 491.520 MHz. Actual rate
> is 245.760 MHz
> [WARNING] [MULTI_USRP] Could not set TX rate to 491.520 MHz. Actual rate
> is 245.760 MHz
> [WARNING] [MULTI_USRP] Could not set TX rate to 491.520 MHz. Actual rate
> is 245.760 MHz
> [WARNING] [MULTI_USRP] Could not set TX rate to 491.520 MHz. Actual rate
> is 245.760 MHz
> [WARNING] [MULTI_USRP] Could not set TX rate to 491.520 MHz. Actual rate
> is 245.760 MHz
> Rx rates range from 240941 to 2.4576e+08
> Tx rates range from 240941 to 2.4576e+08
> Current rate is (rx): 2.4576e+08
> Current rate is (tx): 2.4576e+08
> ```
>
> The same can be observed using the `txrx_loopback_to_file` example. Can
> you help me on that? Thank you in advance =F0=9F=99=82
>
> **Version information**:
>
> ```bash
> root@ni-x4xx-323F74C:/usr/lib/uhd/examples# uhd_config_info --print-all
> UHD 4.1.0.5-0-g18f5f9a4
> Build date: Mon, 06 Dec 2021 19:14:55
> C compiler: GNU 9.2.0
> C++ compiler: GNU 9.2.0
> C flags: -DBOOST_ERROR_CODE_HEADER_ONLY
> -DBOOST_ASIO_DISABLE_STD_STRING_VIEW
> -DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRING_VIEW -DHAVE_CONFIG_H
> -DUHD_LOG_MIN_LEVEL=3D1 -DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=
=3D2
> -DUHD_LOG_CONSOLE_COLOR
>  --sysroot=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd/4.1.0.5+r=
c2-r0/recipe-sysroot
>  -O2 -pipe -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd/
> 4.1.0.5+rc2-r0=3D/usr/src/debug/uhd/4.1.0.5+rc2-r0
>  -fdebug-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd/
> 4.1.0.5+rc2-r0=3D/usr/src/debug/uhd/4.1.0.5+rc2-r0
>  -fdebug-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd/
> 4.1.0.5+rc2-r0/recipe-sysroot=3D
>  -fdebug-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd/
> 4.1.0.5+rc2-r0/recipe-sysroot-native=3D
>  --sysroot=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd/4.1.0.5
> +rc2-r0/recipe-sysroot
> C++ flags: -DBOOST_ERROR_CODE_HEADER_ONLY
> -DBOOST_ASIO_DISABLE_STD_STRING_VIEW
> -DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRING_VIEW -DHAVE_CONFIG_H
> -DUHD_LOG_MIN_LEVEL=3D1 -DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=
=3D2
> -DUHD_LOG_CONSOLE_COLOR
>  --sysroot=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd/4.1.0.5+r=
c2-r0/recipe-sysroot
>  -O2 -pipe -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd/
> 4.1.0.5+rc2-r0=3D/usr/src/debug/uhd/4.1.0.5+rc2-r0
>  -fdebug-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd/
> 4.1.0.5+rc2-r0=3D/usr/src/debug/uhd/4.1.0.5+rc2-r0
>  -fdebug-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd/
> 4.1.0.5+rc2-r0/recipe-sysroot=3D
>  -fdebug-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd/
> 4.1.0.5+rc2-r0/recipe-sysroot-native=3D  -fvisibility-inlines-hidden
> --sysroot=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd/4.1.0.5+rc=
2-r0/recipe-sysroot
> -fvisibility=3Dhidden -fvisibility-inlines-hidden
> Enabled components: LibUHD, LibUHD - C API, LibUHD - Python API, Examples=
,
> Utils, Tests, MPMD, N300, N320, E320, E300, X400, OctoClock
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
> Barkhausen Institut gGmbH | Sitz: W=C3=BCrzburger Stra=C3=9Fe 46, 01187 D=
resden,
> Germany | Registergericht: Amtsgericht Dresden, HRB 37267 |
> Gesch=C3=A4ftsf=C3=BChrer: Prof. Dr. Gerhard Fettweis, Dr. Tim Hentschel =
|
> Vorsitzender der Gesellschafterdelegation: Dr. Andreas Handschuh
>
> Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie
> unter: https://barkhauseninstitut.org/data-privacy
>
> This email and any attachments are intended only for the person to whom
> this email is addressed and may contain confidential and/or privileged
> information. If you received this email in error, please do not disclose
> the contents to anyone, but notify the sender by return email and delete
> this email (and any attachments) from your system. Information on data
> protection and processing of your personal information:
> https://barkhauseninstitut.org/data-privacy
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002570b805d7ac7dd8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Tobias,</div><div><br></div><div>Sorry for the con=
fusion. To get the full 491.520 MS/s you have to use a bitstream that suppo=
rts it, and it requires the 100 GbE interface to stream at that rate.=20

It looks like you&#39;re using the default bitstream that supports 250 MS/s=
 (called X4_200) and 10 GbE. The initial release of X410 didn&#39;t include=
 support for the higher streaming rates but this is planned for the next UH=
D software release, and is currently available on master.<br></div><div><br=
></div><div>Thanks,</div><div><br></div><div>Wade<br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 10, =
2022 at 10:11 AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.=
com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2022-02-10 07:39, Tobias Kronauer
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        <div style=3D"color:black;font-size:12pt;font-family:Calibri,Arial,=
Helvetica,sans-serif">Dear
          all, </div>
        <div style=3D"color:black;font-size:12pt;font-family:Calibri,Arial,=
Helvetica,sans-serif">
          <div><br>
          </div>
          <div>recently, we purchased a X410. According to the
            [manual](<a href=3D"https://www.ni.com/pdf/manuals/378493a" tar=
get=3D"_blank">https://www.ni.com/pdf/manuals/378493a</a>), the USRP
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
<a href=3D"https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_updating=
_fpga_types" target=3D"_blank">https://files.ettus.com/manual/page_usrp_x4x=
x.html#x4xx_updating_fpga_types</a><br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        <div style=3D"color:black;font-size:12pt;font-family:Calibri,Arial,=
Helvetica,sans-serif">
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
            uhd::device_addr_t(&quot;addr=3Dlocalhost&quot;);</div>
          <div>=C2=A0 =C2=A0 uhd::usrp::multi_usrp::sptr usrp =3D
            uhd::usrp::multi_usrp::make(addr);</div>
          <div><br>
          </div>
          <div>=C2=A0 =C2=A0 usrp-&gt;set_rx_rate(491.52e6); // max. value =
deifned
            in <a href=3D"https://www.ni.com/pdf/manuals/378493a" target=3D=
"_blank">https://www.ni.com/pdf/manuals/378493a</a></div>
          <div>=C2=A0 =C2=A0 usrp-&gt;set_tx_rate(491.52e6); // max. value =
deifned
            in <a href=3D"https://www.ni.com/pdf/manuals/378493a" target=3D=
"_blank">https://www.ni.com/pdf/manuals/378493a</a></div>
          <div><br>
          </div>
          <div>=C2=A0 =C2=A0 std::cout &lt;&lt; &quot;Rx rates range from &=
quot; &lt;&lt;
            usrp-&gt;get_rx_rates().start() &lt;&lt; &quot; to &quot; &lt;&=
lt;
            usrp-&gt;get_rx_rates().stop()&lt;&lt; std::endl;</div>
          <div>=C2=A0 =C2=A0 std::cout &lt;&lt; &quot;Tx rates range from &=
quot; &lt;&lt;
            usrp-&gt;get_tx_rates().start() &lt;&lt; &quot; to &quot; &lt;&=
lt;
            usrp-&gt;get_tx_rates().stop()&lt;&lt; std::endl;</div>
          <div><br>
          </div>
          <div>=C2=A0 =C2=A0 std::cout &lt;&lt; &quot;Current rate is (rx):=
 &quot; &lt;&lt;
            usrp-&gt;get_rx_rate() &lt;&lt; std::endl;</div>
          <div>=C2=A0 =C2=A0 std::cout &lt;&lt; &quot;Current rate is (tx):=
 &quot; &lt;&lt;
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
mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F74C,fpga=3DX4=
_200,claimed=3DFalse,addr=3Dlocalhost</div>
          <div>[INFO] [MPM.PeriphManager] init() called with device args
`fpga=3DX4_200,mgmt_addr=3D127.0.0.1,product=3Dx410,clock_source=3Dinternal=
,time_source=3Dinternal&#39;.</div>
          <div>[WARNING] [MPM.RPCServer] A timeout event occured!</div>
          <div>[INFO] [MPM.PeriphManager] init() called with device args
`fpga=3DX4_200,mgmt_addr=3D127.0.0.1,product=3Dx410,clock_source=3Dinternal=
,time_source=3Dinternal&#39;.</div>
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
            <span id=3D"gmail-m_3779269736751540360=F0=9F=99=82">=F0=9F=99=
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
=C2=A0--sysroot=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd/<a hre=
f=3D"http://4.1.0.5" target=3D"_blank">4.1.0.5</a>+rc2-r0/recipe-sysroot
            =C2=A0-O2 -pipe -g -feliminate-unused-debug-types
-fmacro-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd/<a =
href=3D"http://4.1.0.5" target=3D"_blank">4.1.0.5</a>+rc2-r0=3D/usr/src/deb=
ug/uhd/<a href=3D"http://4.1.0.5" target=3D"_blank">4.1.0.5</a>+rc2-r0
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0
=C2=A0-fdebug-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/u=
hd/<a href=3D"http://4.1.0.5" target=3D"_blank">4.1.0.5</a>+rc2-r0=3D/usr/s=
rc/debug/uhd/<a href=3D"http://4.1.0.5" target=3D"_blank">4.1.0.5</a>+rc2-r=
0
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0
=C2=A0-fdebug-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/u=
hd/<a href=3D"http://4.1.0.5" target=3D"_blank">4.1.0.5</a>+rc2-r0/recipe-s=
ysroot=3D
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0
=C2=A0-fdebug-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/u=
hd/<a href=3D"http://4.1.0.5" target=3D"_blank">4.1.0.5</a>+rc2-r0/recipe-s=
ysroot-native=3D
            =C2=A0
=C2=A0--sysroot=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd/<a hre=
f=3D"http://4.1.0.5" target=3D"_blank">4.1.0.5</a>+rc2-r0/recipe-sysroot</d=
iv>
          <div>C++ flags: -DBOOST_ERROR_CODE_HEADER_ONLY
            -DBOOST_ASIO_DISABLE_STD_STRING_VIEW
            -DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRING_VIEW
            -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1
            -DUHD_LOG_CONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2
            -DUHD_LOG_CONSOLE_COLOR
=C2=A0--sysroot=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd/<a hre=
f=3D"http://4.1.0.5" target=3D"_blank">4.1.0.5</a>+rc2-r0/recipe-sysroot
            =C2=A0-O2 -pipe -g -feliminate-unused-debug-types
-fmacro-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd/<a =
href=3D"http://4.1.0.5" target=3D"_blank">4.1.0.5</a>+rc2-r0=3D/usr/src/deb=
ug/uhd/<a href=3D"http://4.1.0.5" target=3D"_blank">4.1.0.5</a>+rc2-r0
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0
=C2=A0-fdebug-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/u=
hd/<a href=3D"http://4.1.0.5" target=3D"_blank">4.1.0.5</a>+rc2-r0=3D/usr/s=
rc/debug/uhd/<a href=3D"http://4.1.0.5" target=3D"_blank">4.1.0.5</a>+rc2-r=
0
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0
=C2=A0-fdebug-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/u=
hd/<a href=3D"http://4.1.0.5" target=3D"_blank">4.1.0.5</a>+rc2-r0/recipe-s=
ysroot=3D
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0
=C2=A0-fdebug-prefix-map=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/u=
hd/<a href=3D"http://4.1.0.5" target=3D"_blank">4.1.0.5</a>+rc2-r0/recipe-s=
ysroot-native=3D
            =C2=A0-fvisibility-inlines-hidden =C2=A0
--sysroot=3D/__w/790/build/tmp-glibc/work/aarch64-oe-linux/uhd/<a href=3D"h=
ttp://4.1.0.5" target=3D"_blank">4.1.0.5</a>+rc2-r0/recipe-sysroot
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
        <div style=3D"color:black;font-size:12pt;font-family:Calibri,Arial,=
Helvetica,sans-serif"><br>
        </div>
        <div style=3D"color:black;font-size:12pt;font-family:Calibri,Arial,=
Helvetica,sans-serif">Kind
          regards,</div>
        <span style=3D"color:black;font-size:12pt;font-family:Calibri,Arial=
,Helvetica,sans-serif">Tobia</span>s<br>
      </div>
      <div>
        <p style=3D"font-size:11pt;font-family:Calibri,sans-serif,serif,&qu=
ot;EmojiFont&quot;;margin:0px">
          <br>
          <br>
          <b>Barkhausen Institut</b> <br>
          <a href=3D"http://www.barkhauseninstitut.org" target=3D"_blank">w=
ww.barkhauseninstitut.org</a> <br>
          <br>
        </p>
        <p style=3D"font-size:11pt;font-family:Calibri,sans-serif,serif,&qu=
ot;EmojiFont&quot;;margin:0px">
          <span style=3D"font-size:9pt" lang=3D"de-DE">Barkhausen Institut
            gGmbH | Sitz: W=C3=BCrzburger Stra=C3=9Fe 46, 01187 Dresden, Ge=
rmany |
            Registergericht: Amtsgericht Dresden, HRB 37267 |
            Gesch=C3=A4ftsf=C3=BChrer: Prof. Dr. Gerhard Fettweis, Dr. Tim
            Hentschel | Vorsitzender der Gesellschafterdelegation: Dr.
            Andreas Handschuh <br>
            <br>
            Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten
            finden Sie unter:
            <a href=3D"https://barkhauseninstitut.org/data-privacy" target=
=3D"_blank">https://barkhauseninstitut.org/data-privacy</a>
            <br>
            <br>
          </span><span style=3D"font-size:9pt" lang=3D"en-US">This email
            and any attachments are intended only for the person to whom
            this email is addressed and may contain confidential and/or
            privileged information. If you received this email in error,
            please do not disclose the contents to anyone, but notify
            the sender by return email and delete this email (and any
            attachments) from your system. Information on data
            protection and processing of your personal information:
            <a href=3D"https://barkhauseninstitut.org/data-privacy" target=
=3D"_blank">https://barkhauseninstitut.org/data-privacy</a>
            <br>
            <br>
          </span></p>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000002570b805d7ac7dd8--

--===============8448055068295275531==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8448055068295275531==--
