Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 871B17761E3
	for <lists+usrp-users@lfdr.de>; Wed,  9 Aug 2023 15:59:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D4276384ADB
	for <lists+usrp-users@lfdr.de>; Wed,  9 Aug 2023 09:59:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691589568; bh=G9+JatSF0Q3bgPLQp/rVKV+6ArBLNjPQOh+mzCr7pOk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=v0VBFeRj5mEAio3Qd7h5NXJLNyPGJudsCPwyFF6sgEfur1CRzxxFJrkz8VvzFaUS4
	 AZ3E+rQszYLcLQ1GlLmP2GpyMNTmgpOx2jWb0m3WRoR3k362gr5auq72diPlQF+otI
	 OyfAH5ZaHHMJouiBtAgG8Lbh2j9aectR7mQnNDVdivIX4NQ5XIjvdo3A40DqnGUpw1
	 KBe1tPyOUi19e513ow0ujGPBVf/W0GvlnNEn0X73N69DBGLjUpRyoFlUXtqUXMMN8Z
	 k+WwJF0EKQSWnNjeK9PXMANHjf2ibtZdVnF9DkBqdzQZQeMP5LLYptE9707xTTJOg2
	 lZiv9WAytiiGQ==
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id A13A73840B2
	for <usrp-users@lists.ettus.com>; Wed,  9 Aug 2023 09:58:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="qq19rVly";
	dkim-atps=neutral
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-63f7cd44d04so17776436d6.2
        for <usrp-users@lists.ettus.com>; Wed, 09 Aug 2023 06:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691589534; x=1692194334;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l/0vhfESHpwQTD2LFrkVm/lOSYc0q3xkXcpakGlfW1U=;
        b=qq19rVlyugujt4MbBPky0MV/rFnvKClxn0VEq4mVFRghQUAoscMuVveMU97eOS2u3p
         87zuKmwO75O36b8KqmztmpbZc7oJW1+VU6WhfR3u1lQ5Q3iBRfkqVdRHjckaZEx1b7jZ
         mcHFtRkT+7f1s0kC1k5w6Hj31aCFaEnlDL1sxo/uUDyzQf2l+A+cjatpFp3Br4szKYU1
         3/viLhWUd6A2GoPYl5D7w4x+GOb3gJxY5vTKRx0EqJnv1npvWUKYVbVYL16MBIn5geL4
         GiIhYzr0VMws3wWZqOWp4ttWOpv+HPGpf6eLfEGPkHR6ypRp8klMxqJRWfmp1FaLj+Th
         Zt7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691589534; x=1692194334;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=l/0vhfESHpwQTD2LFrkVm/lOSYc0q3xkXcpakGlfW1U=;
        b=KHZF2Ojz28UP0+sYS/E0XiMYkccf53XmwkiAJpUkMxgfn0JvDwg9ENSMZ1kxJtMx8Y
         eBjC0zjB1orfrpmDJyIsDwo2RvWEaFTxyuX5QzChDj0/Q73vgYTL4i25v6fpBgzOkL2i
         D0iOEMA6Hbb1IRj8XoxnXF7oEOaLghKgHKA8xV0VpIwxv0Mu7ZJaOqe/RHh2o52QFxcz
         Qb3Clx2cYMHYOkgSkzhOc3TYo0lKn30XkG6SAQbTNrYFCW3LF6L8hrRzCU5NDfkSi0wr
         7RFTmpCSfMWk/sOYbQcohHIYpWcwVCRAUVoa5cDmwcMD4ZqHvCbBy8oXctCiM4ItqKUV
         TvvQ==
X-Gm-Message-State: AOJu0YwVky39U59NtdgF3Ac7VBLaNh4Rglq3QqK+8ckuz2ibYlYPOY0u
	HDzH1amIYGiM17j4+7abjXBHtm/KDco=
X-Google-Smtp-Source: AGHT+IHV7NpqrqHVwFJLt1wKfzFLY7Jb3mU4sVRHp0tj3il4GWbW+nPlLb3PzB6U43Fp61q5FJjBcw==
X-Received: by 2002:a0c:dd0b:0:b0:63c:efa5:2860 with SMTP id u11-20020a0cdd0b000000b0063cefa52860mr2463005qvk.25.1691589533799;
        Wed, 09 Aug 2023 06:58:53 -0700 (PDT)
Received: from [192.168.2.164] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id g1-20020a0caac1000000b0062629cbff11sm4493600qvb.11.2023.08.09.06.58.53
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Aug 2023 06:58:53 -0700 (PDT)
Message-ID: <75cd44ba-2792-e576-33e9-31662042f96e@gmail.com>
Date: Wed, 9 Aug 2023 09:58:44 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <HthKsPfrgmITcV8UmOJMDGCm4EHU3yjmCGzPh435k0@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <HthKsPfrgmITcV8UmOJMDGCm4EHU3yjmCGzPh435k0@lists.ettus.com>
Message-ID-Hash: UIZWHXQ4L44QDHWCD3KEGD4XSQ2JDG7D
X-Message-ID-Hash: UIZWHXQ4L44QDHWCD3KEGD4XSQ2JDG7D
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Device Serial, Name and Product ID Corruption Issue on Misusage of b2xx_fx3_utils for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UIZWHXQ4L44QDHWCD3KEGD4XSQ2JDG7D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6798978741285556638=="

This is a multi-part message in MIME format.
--===============6798978741285556638==
Content-Type: multipart/alternative;
 boundary="------------oTyDNA7O55iBXDFwOvoXB8h7"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------oTyDNA7O55iBXDFwOvoXB8h7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 09/08/2023 03:46, edenmclaughlin123@gmail.com wrote:
>
> Hi Marcus,
>
> Good Morning! I hope you are doing well. I have |ls -l| =E2=80=98d the=20
> |install_prefix/share/uhd/images/usrp_b210_fpga.rpt| file that you=20
> asked for. Here is the output for that file:
>
>  *
>
>     -rw-r--r-- 1 root root 1518 May 26 15:57 usrp_b210_fpga.rpt
>
> It is a total of 1.5K which is far less than 32KB meaning the=20
> b2xx_fx3_tools could have been able to load the contents of the report=20
> as you coined @Tue, Aug 8, 2023 2:34 PM. I also typed down the=20
> contents below so the viewers can have a look.
>
>     =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
>     Device utilization summary:
>
>     ---------------------------
>
>     Selected Device : 6slx150fgg484-3
>
>     Slice Logic Utilization:
>
>     Number of Slice Registers: 34280 out of 184304 18%
>
>     Number of Slice LUTs: 37206 out of 92152 40%
>
>     Number used as Logic: 31106 out of 92152 33%
>
>     Number used as Memory: 6100 out of 21680 28%
>
>     Number used as RAM: 1560
>
>     Number used as SRL: 4540
>
>     Slice Logic Distribution:
>
>     Number of LUT Flip Flop pairs used: 50601
>
>     Number with an unused Flip Flop: 16321 out of 50601 32%
>
>     Number with an unused LUT: 13395 out of 50601 26%
>
>     Number of fully used LUT-FF pairs: 20885 out of 50601 41%
>
>     Number of unique control sets: 805
>
>     IO Utilization:
>
>     Number of IOs: 180
>
>     Number of bonded IOBs: 163 out of 338 48%
>
>     IOB Flip Flops/Latches: 156
>
>     Specific Feature Utilization:
>
>     Number of Block RAM/FIFO: 190 out of 268 70%
>
>     Number using Block RAM only: 190
>
>     Number of BUFG/BUFGCTRLs: 4 out of 16 25%
>
>     Number of DSP48A1s: 152 out of 180 84%
>
>     =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
>     Timing Summary:\n
>
>     All constraints were met.
>
>     =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> I hope the report is readable at all.
>
> By the way, you have mentioned about a modified version of UHD. I am=20
> guessing it is not but is it publicly available by any chance or is it=20
> disclosed to the end-users under some conditions maybe? Would it be=20
> possible for me to configure an EEPROM image myself for any version of=20
> the UHD given I know the device=E2=80=99s serial no. part no. etc.?
>
> If there is any alternative way to sending the device for a repair, I=20
> would be happy to try it out. Looking forward for your response!
>
>
I'm just guessing that manufacturing has a tool that does what you=20
need.=C2=A0 I have some queries into the appropriate groups in
 =C2=A0 Ettus/NI.

I did a fair amount of investigating yesterday, and the .img file is NOT=20
just a linear blob of bytes, but has internal structure,
 =C2=A0 including address fields, etc.=C2=A0 So even though the file was =
only=20
1.5kb, it could still corrupt any address in the EEPROM, and
 =C2=A0 even some FX3 configuration registers.

The EEPROM locations for the things in question here start at 32512 (256=20
bytes less than the 32KB size of the EEPROM).

The map for it is in:

.../uhd/host/lib/b200/b200_mb_eeprom.cpp

const std::unordered_map<std::string, eeprom_field_t> B200_REV1_MAP =3D {
 =C2=A0=C2=A0=C2=A0 {"magic", {0, 2}},
 =C2=A0=C2=A0=C2=A0 {"eeprom_revision", {2, 2}},
 =C2=A0=C2=A0=C2=A0 {"eeprom_compat", {4, 2}},
 =C2=A0=C2=A0=C2=A0 {"vendor_id", {6, 2}},
 =C2=A0=C2=A0=C2=A0 {"product_id", {8, 2}},
 =C2=A0=C2=A0=C2=A0 {"revision", {10, 2}},
 =C2=A0=C2=A0=C2=A0 {"product", {12, 2}},
 =C2=A0=C2=A0=C2=A0 {"name", {14, NAME_MAX_LEN}},
 =C2=A0=C2=A0=C2=A0 {"serial", {14 + NAME_MAX_LEN, SERIAL_LEN}},
 =C2=A0=C2=A0=C2=A0 // pad of 210 bytes
};


> Best wishes,
>
> Eden.
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------oTyDNA7O55iBXDFwOvoXB8h7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 09/08/2023 03:46,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:edenmclaughlin=
123@gmail.com">edenmclaughlin123@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:HthKsPfrgmITcV8UmOJMDGCm4EHU3yjmCGzPh435k0@lists.ettus.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi Marcus,</p>
      <p>Good Morning! I hope you are doing well. I have <code>ls -l</cod=
e>
        =E2=80=98d the <code>install_prefix/share/uhd/images/usrp_b210_fp=
ga.rpt</code>
        file that you asked for. Here is the output for that file:</p>
      <ul>
        <li>
          <p>-rw-r--r-- 1 root root 1518 May 26 15:57 usrp_b210_fpga.rpt<=
/p>
        </li>
      </ul>
      <p>It is a total of 1.5K which is far less than 32KB meaning the
        b2xx_fx3_tools could have been able to load the contents of the
        report as you coined @Tue, Aug 8, 2023 2:34 PM. I also typed
        down the contents below so the viewers can have a look.</p>
      <blockquote>
        <p>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D</p>
        <p>Device utilization summary:</p>
        <p>---------------------------</p>
        <p>Selected Device : 6slx150fgg484-3 </p>
        <p>Slice Logic Utilization: </p>
        <p> Number of Slice Registers: 34280 out of 184304 18% </p>
        <p> Number of Slice LUTs: 37206 out of 92152 40% </p>
        <p> Number used as Logic: 31106 out of 92152 33% </p>
        <p> Number used as Memory: 6100 out of 21680 28% </p>
        <p> Number used as RAM: 1560</p>
        <p> Number used as SRL: 4540</p>
        <p>Slice Logic Distribution: </p>
        <p> Number of LUT Flip Flop pairs used: 50601</p>
        <p> Number with an unused Flip Flop: 16321 out of 50601 32% </p>
        <p> Number with an unused LUT: 13395 out of 50601 26% </p>
        <p> Number of fully used LUT-FF pairs: 20885 out of 50601 41% </p=
>
        <p> Number of unique control sets: 805</p>
        <p>IO Utilization: </p>
        <p> Number of IOs: 180</p>
        <p> Number of bonded IOBs: 163 out of 338 48% </p>
        <p> IOB Flip Flops/Latches: 156</p>
        <p>Specific Feature Utilization:</p>
        <p> Number of Block RAM/FIFO: 190 out of 268 70% </p>
        <p> Number using Block RAM only: 190</p>
        <p> Number of BUFG/BUFGCTRLs: 4 out of 16 25% </p>
        <p> Number of DSP48A1s: 152 out of 180 84% </p>
        <p>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D</p>
        <p>Timing Summary:\n</p>
        <p>All constraints were met.</p>
        <p>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D</p>
      </blockquote>
      <p>I hope the report is readable at all.</p>
      <p>By the way, you have mentioned about a modified version of UHD.
        I am guessing it is not but is it publicly available by any
        chance or is it disclosed to the end-users under some conditions
        maybe? Would it be possible for me to configure an EEPROM image
        myself for any version of the UHD given I know the device=E2=80=99=
s
        serial no. part no. etc.?</p>
      <p>If there is any alternative way to sending the device for a
        repair, I would be happy to try it out. Looking forward for your
        response!</p>
      <p><br>
      </p>
    </blockquote>
    I'm just guessing that manufacturing has a tool that does what you
    need.=C2=A0 I have some queries into the appropriate groups in<br>
    =C2=A0 Ettus/NI.<br>
    <br>
    I did a fair amount of investigating yesterday, and the .img file is
    NOT just a linear blob of bytes, but has internal structure,<br>
    =C2=A0 including address fields, etc.=C2=A0 So even though the file w=
as only
    1.5kb, it could still corrupt any address in the EEPROM, and<br>
    =C2=A0 even some FX3 configuration registers.<br>
    <br>
    The EEPROM locations for the things in question here start at 32512
    (256 bytes less than the 32KB size of the EEPROM).<br>
    =C2=A0 <br>
    The map for it is in:<br>
    <br>
    .../uhd/host/lib/b200/b200_mb_eeprom.cpp<br>
    <br>
    const std::unordered_map&lt;std::string, eeprom_field_t&gt;
    B200_REV1_MAP =3D {<br>
    =C2=A0=C2=A0=C2=A0 {"magic", {0, 2}},<br>
    =C2=A0=C2=A0=C2=A0 {"eeprom_revision", {2, 2}},<br>
    =C2=A0=C2=A0=C2=A0 {"eeprom_compat", {4, 2}},<br>
    =C2=A0=C2=A0=C2=A0 {"vendor_id", {6, 2}},<br>
    =C2=A0=C2=A0=C2=A0 {"product_id", {8, 2}},<br>
    =C2=A0=C2=A0=C2=A0 {"revision", {10, 2}},<br>
    =C2=A0=C2=A0=C2=A0 {"product", {12, 2}},<br>
    =C2=A0=C2=A0=C2=A0 {"name", {14, NAME_MAX_LEN}},<br>
    =C2=A0=C2=A0=C2=A0 {"serial", {14 + NAME_MAX_LEN, SERIAL_LEN}},<br>
    =C2=A0=C2=A0=C2=A0 // pad of 210 bytes<br>
    };<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:HthKsPfrgmITcV8UmOJMDGCm4EHU3yjmCGzPh435k0@lists.ettus.=
com">
      <p>Best wishes,</p>
      <p>Eden.</p>
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

--------------oTyDNA7O55iBXDFwOvoXB8h7--

--===============6798978741285556638==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6798978741285556638==--
