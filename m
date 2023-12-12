Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A58F180EF7D
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 15:59:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 800A43857BB
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 09:59:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702393187; bh=Uv1WRhvoGExIOB1xmWMqxeFsOLEpId0v84xVoQNhgk0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=aOv2c+q/sixos9Od6xcOTtPeQz0tyfxBlgLuHFAgSuHv+JkVxAynpAl0ZMnU2p6HW
	 nh8JbQ2CJZSSPVy+jixWiv43X7oXAZZ0Zrkb/2qBaY12pcRH51CB9ry7ZFWI24sinl
	 X8S1gCz6t8Bn4FDNlDeye4Yd/yLlFgd7DQfGGbxdDYOCC+XRS9V5zTfiZ5S/kf6aAM
	 +U2dGLUhtHRmIvTzpuohg5Da3r8frj07BKZA7kd63g6sZvOT4u1eMK9bqLSAdy8q0D
	 khFOtzmEWaaDujE/CFmEicx4csnp1n8qPYsdKB67xhjtpRMXP/ZoNBJhS9h9NovS3g
	 Y/9c2SUASWqwQ==
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	by mm2.emwd.com (Postfix) with ESMTPS id AE48F38479B
	for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 09:58:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="U3RueArp";
	dkim-atps=neutral
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-6d9f879f784so2989650a34.2
        for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 06:58:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702393132; x=1702997932; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wiIzAeKWl1PfhiVmOqTmaoMqngA/GwVuih7we0Hlw9g=;
        b=U3RueArpFwRjlhU/PDIt9RPddWij3SRlQZhcMuAEWzPBMInerSBpYLS+mrSjYLylvC
         ZmDoyboznGlMsnmzkDlPMdFvw6CKcxrnlRZrQb+3kVdNHH0EMeXQwknlDd05aUhY9P2W
         7aXbg02A5fP1h2ZpA5RtLx8cikl96uQhgVv/9ctFFVH0KZaOSiFTI+GcAazPU/dGwr5w
         juYyhj+HgRrw4zkf+vbaP+asR3tiWlYRAPcDG+nQgAV08d3/mV+fwtM5IVKoqUcwqzH/
         UqzCqrOra1vHbhtDSwrQHA+ag+zc0fteSStAuKKYrTzcIBAhKcD5sd2pI5MfQxHYlX3v
         EwEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702393132; x=1702997932;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wiIzAeKWl1PfhiVmOqTmaoMqngA/GwVuih7we0Hlw9g=;
        b=VmGWcYxFlcHygtYCJPHUL5wOwg+rIeEMrLqqD+wkzi1CM5Z2vbv4vHpMs4isVCDhLo
         SEsQzyOey/1NqRT9sF+ffD7LRZMo9LRCjmfjl2htMuv8cC9XyK7Y6R6LosHaDL/o/691
         SegmXd7BO1+ieN4ixKU9CuRadfLp8JIUjY54a9zWCUSKl4/00UPa0MCUBNidsGkqoKNU
         4LEMSxDS+pHR9rmo2IMr0HYcQWkA3LXQkd+dTZQ0l/P2QI6d4pd2iC9yBOpRciGSltVw
         X/W6D3PDd7g2/TThNfIj1/ss7Tc8ot7oAYodz4u85WBSyAk9X0V5+cIXkLl4vGGgWhZ4
         1d0w==
X-Gm-Message-State: AOJu0Yyjq4bcGOAi115BdUYNGAk/0F4b/QLoHrg7zqygtfTSWgeQit1A
	dIjBCovpxXtGdpxYZba967lkW5fFw0g=
X-Google-Smtp-Source: AGHT+IFN2rM6LsoC30vOVqUbftYfbt9Dsk2s6eGXCvHnMsP1pZ5m+PFHSLR24PWyLFRESEF+xNatdw==
X-Received: by 2002:a9d:6a10:0:b0:6d9:e01c:6b79 with SMTP id g16-20020a9d6a10000000b006d9e01c6b79mr6276893otn.30.1702393132745;
        Tue, 12 Dec 2023 06:58:52 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id s6-20020a0cf646000000b0067ec9faed23sm2329963qvm.142.2023.12.12.06.58.51
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Dec 2023 06:58:52 -0800 (PST)
Message-ID: <3e2befc5-96c4-4651-8e97-b54f05e9ae44@gmail.com>
Date: Tue, 12 Dec 2023 09:58:42 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <Ukuh0J7vQ5pN991Zc1p5jmNhY0n5RXivBEX15K5M4@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <Ukuh0J7vQ5pN991Zc1p5jmNhY0n5RXivBEX15K5M4@lists.ettus.com>
Message-ID-Hash: WWPS4WKQMJVVSVRUZJDA7TGVRQJKBAGM
X-Message-ID-Hash: WWPS4WKQMJVVSVRUZJDA7TGVRQJKBAGM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Read user registers with RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WWPS4WKQMJVVSVRUZJDA7TGVRQJKBAGM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7926275436727054147=="

This is a multi-part message in MIME format.
--===============7926275436727054147==
Content-Type: multipart/alternative;
 boundary="------------mqy0zg099E5iqcJKrKCD7y9n"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------mqy0zg099E5iqcJKrKCD7y9n
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 12/12/2023 09:41, mamuki92@gmail.com wrote:
>
> Hi Marcus,
>
> Thanks for your answer.
> So, there shouldn=E2=80=99t be any problem on the UHD side with the rea=
ding,=20
> is a gnuradio thing, right?
> From what I see on the Python code generated for the Function Probe,=20
> it calls the =E2=80=9Cget_int_property=E2=80=9D register function, whic=
h seems the one=20
> that is used for the register reading in UHD, but I will cross-post=20
> the question in discuss-gnuradio so they can help me clarify.
>
> Kind Regards,
>
> Maria
>
I didn't immediately see anything, but I'm not an RFNOC expert.=C2=A0 I=20
suggested the diagnostics within your flow-graph just to
 =C2=A0=C2=A0 make sure that it is actually getting called.=C2=A0 Just pu=
t a diagnostic=20
print inside your "get_int_property" function.



--------------mqy0zg099E5iqcJKrKCD7y9n
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 12/12/2023 09:41, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:mamuki92@gmail.com">mamuki92@gmail.co=
m</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:Ukuh0J7vQ5pN991Zc1p5jmNhY0n5RXivBEX15K5M4@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi Marcus,</p>
      <p>Thanks for your answer.<br>
        So, there shouldn=E2=80=99t be any problem on the UHD side with t=
he
        reading, is a gnuradio thing, right?<br>
        From what I see on the Python code generated for the Function
        Probe, it calls the =E2=80=9Cget_int_property=E2=80=9D register f=
unction, which
        seems the one that is used for the register reading in UHD, but
        I will cross-post the question in discuss-gnuradio so they can
        help me clarify.</p>
      <p>Kind Regards,</p>
      <p>Maria</p>
    </blockquote>
    I didn't immediately see anything, but I'm not an RFNOC expert.=C2=A0=
 I
    suggested the diagnostics within your flow-graph just to<br>
    =C2=A0=C2=A0 make sure that it is actually getting called.=C2=A0 Just=
 put a
    diagnostic print inside your "get_int_property" function.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:Ukuh0J7vQ5pN991Zc1p5jmNhY0n5RXivBEX15K5M4@lists.ettus.com"><s=
pan
      style=3D"white-space: pre-wrap">
</span></blockquote>
    <br>
  </body>
</html>

--------------mqy0zg099E5iqcJKrKCD7y9n--

--===============7926275436727054147==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7926275436727054147==--
