Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 588578B3C95
	for <lists+usrp-users@lfdr.de>; Fri, 26 Apr 2024 18:16:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4CAD93855DB
	for <lists+usrp-users@lfdr.de>; Fri, 26 Apr 2024 12:16:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714148176; bh=nwIpMuvEW2MzjWeb83jJhPmnyao5g814L4jC0UOlw54=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=SVROx5XF34f5s0LHv7VsTp+mWlcCp24n+unrYWUtOznrNqmIImj4rSmtdfMx8VB+X
	 Xt79XPFyDoraE5hLTCsbdBqERoJjf1PjswwHL7e9tlDw7jhlUK6vYU5W7XZub8oPSx
	 ItkU5V+QRAefkcllfa5k4RhPjeOijjMIVNjKrgvoJKyYtAltq5p3okymSe6CHrDi2t
	 FSxc14qpfGAeXG+EwsHNT8qYaam0JNyizLpdzgtd/gsiCE/AqjfbMw3y8linm9hnHz
	 QRJ/w2pPJazN9cHThvJwQ2EMQpN4rhOvuO5l5poLCRc6kp50FXWu2nMo53OEpTMYkT
	 XPf7Nwi1z4H2g==
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 9F045385260
	for <usrp-users@lists.ettus.com>; Fri, 26 Apr 2024 12:15:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="O1PZJYRB";
	dkim-atps=neutral
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-78efd1a0022so161556385a.3
        for <usrp-users@lists.ettus.com>; Fri, 26 Apr 2024 09:15:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714148116; x=1714752916; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=huemCNJ6dgOCOJr1YLand2np3kR5xX/3X3jixItbB8Q=;
        b=O1PZJYRBRnOITgKVcUJQZ2hrNUsBPXpKlXZWOuT9AbWxxyd5asdyUKF6/lC2gqWyjq
         XdmYzl6bkFuU5bdp6WmW8Yi3Bw4XoIkrDP5NZagepGUUVX5882glwDuwt0B2X+PL4QX8
         pbn5dhR886I5JeteZPMUO2LPreJ+OlwbLZ7eEthEQNxjp9SGt4RW7ye3VJR0vXZgWT7v
         UFaDtMGN4lN5MUyBqpuLZldRzQLUma5PXZxtyET//oJldP46VrT5hSUdzIrDZ4b2pn4I
         K/fg1Jg6Fvb5gvKFsOVO9KHiRryDBIQc19l1mzplk91r+pwdekeJUEi8OMIf7kufLqyx
         8SPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714148116; x=1714752916;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=huemCNJ6dgOCOJr1YLand2np3kR5xX/3X3jixItbB8Q=;
        b=M8NdB/oDNpUMidNUzylGQEVoY+kGAOGF4/6swSE+RADkA/RWCb2LAtj5SJio3IJ3PB
         2yyJpHoyK8sAFpdgowDwdccV9iPTEcxmY/LGievm/OD+Gq1/RbsIbFkfWZUBAIsw7YAk
         jYZrYWq/cRaEd44Im5ewwAiSO4TpjFS+DgHqm+DKSPEvj49lhAqxEWmazZGialR+cu8L
         oChKM11lOaHjMRADIaYruVgfit8tf9I5gzdW2yir/rbdPO8lAQ6B4SGJ87dfTmKrCxFn
         7vxmeXZPjv+bJtzAc46CROmuzWHkQzmrvpTn6LU2Qo3t/CGqLyXhswDT+SsE3Rni4+K4
         Sytw==
X-Gm-Message-State: AOJu0YyChW0SMzTtJfVrlJ31fI0McEGLdjw0h/EMDAJixV1+0wnTJbSF
	VMGUf6t7v1zqvq+bzfexl7u4kwfoXnnKjyamlhsLu+MpmMAaqSxunN0Rag==
X-Google-Smtp-Source: AGHT+IHIJnRgeb6j/yxrVt9IcO6/4RTbSDfBCAEmZMrFz4cQ/ySt11Eg6O5tQICY0GXb1LmApVIm4A==
X-Received: by 2002:a05:620a:4555:b0:790:955e:9e40 with SMTP id u21-20020a05620a455500b00790955e9e40mr4128895qkp.9.1714148115603;
        Fri, 26 Apr 2024 09:15:15 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.192])
        by smtp.googlemail.com with ESMTPSA id vr2-20020a05620a55a200b00790a2e12dc8sm1238864qkn.116.2024.04.26.09.15.15
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Apr 2024 09:15:15 -0700 (PDT)
Message-ID: <ba56dd13-6cc0-4736-b2d9-03ffd8ba444c@gmail.com>
Date: Fri, 26 Apr 2024 12:15:06 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <zOJJ7EgLjbGE8l37A47H9XZKXDcRKXcbAYZ0Ql4IgBg@lists.ettus.com>
 <BN2P110MB1747CB3FD646EE5CC091A28AB712A@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
 <e0fdc474-d16d-442a-8d6b-ded19e76a979@gmail.com>
 <4696440.2274615.1714142099362@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <4696440.2274615.1714142099362@mail.yahoo.com>
Message-ID-Hash: 3IVBVHTT3DD7GJQUOCKEKHCFNWGYHBMM
X-Message-ID-Hash: 3IVBVHTT3DD7GJQUOCKEKHCFNWGYHBMM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 self-calibration
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3IVBVHTT3DD7GJQUOCKEKHCFNWGYHBMM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2743099657557005116=="

This is a multi-part message in MIME format.
--===============2743099657557005116==
Content-Type: multipart/alternative;
 boundary="------------UQzHmqr2f0uM8zcUa6I2YIQR"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------UQzHmqr2f0uM8zcUa6I2YIQR
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 26/04/2024 10:34, zhou via USRP-users wrote:
> Hello all,
>
> When calibrating X410
> uhd_cal_tx_dc_offset --verbose=20
> --args=3D'192.168.20.2,mgmt_addr=3D192.168.6.99' --freq_start 2e9=20
> --freq_stop 7.2e9 --precision 0.00001 --freq_step 5e6 --subdev=3D"A:0"
>
> Error happened:
> Error: This board does not have the CAL antenna option, cannot=20
> self-calibrate.
>
> Looking at the page
> https://files.ettus.com/manual/page_calibration.html
> X410 uses ZBX daughterboard. It seems that X410 can't use the self-cal=20
> commands.
>
> Then how to calibrate it?
>
> Thanks,
> H.
>
>
The cal_xx_dc_offset and cal_cc_iq_balance utilities are designed for=20
USRPs with discrete daughtercards based on direct-conversion
 =C2=A0 RF chains.=C2=A0=C2=A0 The X410 absolutely isn't that.=C2=A0 The =
ZBX board does=20
downconversion, but using a "low" IF that can be directly
 =C2=A0 sampled by the RFSoC.=C2=A0 There's no utility in calibrating DC =
offset=20
and IQ balance on this radio.


--------------UQzHmqr2f0uM8zcUa6I2YIQR
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 26/04/2024 10:34, zhou via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:4696440.2274615.1714142099362@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydp569d4a9byahoo-style-wrap"
style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-si=
ze:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hello all,</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">When calibrating X410=C2=A0=
</div>
        <div dir=3D"ltr" data-setdir=3D"false"><span>uhd_cal_tx_dc_offset=
=C2=A0
            --verbose --args=3D'192.168.20.2<span>,mgmt_addr=3D192.168.6.=
99</span>'
            --freq_start 2e9 --freq_stop 7.2e9 --precision 0.00001
            --freq_step 5e6 --subdev=3D"A:0"</span><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><br>
          </span></div>
        <div dir=3D"ltr" data-setdir=3D"false">Error happened:</div>
        <div dir=3D"ltr" data-setdir=3D"false"><span>Error: This board do=
es
            not have the CAL antenna option, cannot self-calibrate.</span=
><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Looking at the page</div>
        <div dir=3D"ltr" data-setdir=3D"false"><a
            href=3D"https://files.ettus.com/manual/page_calibration.html"
            rel=3D"nofollow" target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">https://files.ettus.com/manua=
l/page_calibration.html</a><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">X410 uses ZBX daughterboar=
d.
          It seems that X410 can't use the self-cal commands.</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Then how to calibrate it?<=
/div>
        <div><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks,</div>
        <div dir=3D"ltr" data-setdir=3D"false">H.</div>
        <div><br>
        </div>
      </div>
      <br>
    </blockquote>
    The cal_xx_dc_offset and cal_cc_iq_balance utilities are designed
    for USRPs with discrete daughtercards based on direct-conversion<br>
    =C2=A0 RF chains.=C2=A0=C2=A0 The X410 absolutely isn't that.=C2=A0 T=
he ZBX board does
    downconversion, but using a "low" IF that can be directly<br>
    =C2=A0 sampled by the RFSoC.=C2=A0 There's no utility in calibrating =
DC offset
    and IQ balance on this radio.<br>
    <br>
    <br>
  </body>
</html>

--------------UQzHmqr2f0uM8zcUa6I2YIQR--

--===============2743099657557005116==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2743099657557005116==--
