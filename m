Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 27217992B0A
	for <lists+usrp-users@lfdr.de>; Mon,  7 Oct 2024 14:05:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 06D1A385280
	for <lists+usrp-users@lfdr.de>; Mon,  7 Oct 2024 08:05:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728302713; bh=eHICGh6OVrZiGkr6MqNUdX94dJlBBDI8Pk8trf64rIY=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=LZmpssmkpfyEnA4w6XlUefrKjNFYryEsB9zoJE6TzeorsL47VUdbBXCpJAyfELOU6
	 Mig2TRL7TOmHL4ddZscZuAM6ltkqPyMDpuamOaJjoQ/mjlMRWoASwP6NxD1eMpyAy7
	 amjzPiaSmm5JjETDKQgNuuaA/AZdpgLjlkzIbJpU1tIjJwjglXHy0FbzRd8+x/50Qr
	 NtkgevB1RBF5SJjmRYM7YUZqVHyITYj9mET8y/hYfMT0bdi7flCdkEyejU0dJT01VQ
	 XXoboh5yCJfzFmOfJ1ciXKVOropIgCtNxAkOiMTRCXe8JDbNFRfb2v0GMOaKzJS16X
	 3PiHarDvBI8Jg==
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 4E57D38502C
	for <usrp-users@lists.ettus.com>; Mon,  7 Oct 2024 08:04:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cc3gQLD7";
	dkim-atps=neutral
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-50a87472832so1068538e0c.3
        for <usrp-users@lists.ettus.com>; Mon, 07 Oct 2024 05:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728302692; x=1728907492; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qO2xay36bygCCXWeoyxjX4X83hf8PNIPgmoudNtC+P8=;
        b=cc3gQLD7L2rHmUcKP3gcCWUnxpm/5IBbf3V8P5y/6EyCr4dYdd20TFn9+8SonTbArS
         tyg67SGg/9DUn20bpU0S5MXwXaCl/E0n4y9c3983wI42KpeSa0bwOZgMmSlI7gHh4oBk
         0mFuVRRKsiInt/ZYbl4CxFDyGv2ryirKKYUfpZO2uQ+SKCg3EpnxHV6gvfY4+uQ9OVqk
         jn4mcW7ArxUeCNesD8rX5VSmweTocsMBsWGMnBYgZjANk0Y7N/PozBwnvfgMGHLWV8A5
         6vrVa/olagugiMhBeQ7W0o/Zv1AHvKKUp/Oy08YVF4vBvGlJwicEGFnGqKMPegshovGt
         BTuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728302692; x=1728907492;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qO2xay36bygCCXWeoyxjX4X83hf8PNIPgmoudNtC+P8=;
        b=EkguDOXZuzL7bvXV0+ECiyRWl2V8EAe2M8VIxRnfRkMBw6JskW0au8GgllEWie3ZFK
         o0TmEgC/Bg6nDqagENu03XRym180Lnxc4HcYxEiIeAVuv6VNZ5qCug5RH5/5LJsffYs0
         1sLXJmojoWpcTt9LZMPFNEN7bAG4dgzBvX58Ee7l4mS+8U3F0PT8q941eHmxW8HStQpM
         zqZfSy6vKKFgyA6Qccm1d5rDgydk3/lg6znk3QrLTUe0YjDP0Lk2cW7nCepKGsLOICJx
         3sBbgHpTkvW89PQpSv9uHxAxUGX7pU+ueFcdVPbIOBmPK6smkdhKOmHvh5zOGHQ2MOnA
         7Rfw==
X-Gm-Message-State: AOJu0Yy99993zIRvCYbqUlSO7jBquYSRuKhNlTp1EJvY4ylNUCbxveOc
	LVB/NhvgxWFoUYx5zLq6F5gTaT9l2Lv09bpeq6LAhSkHv9l/SaOqGw0fgD166CQPvWGtW1NW9TH
	VX+fWgCgiVsVZIMJ+oJMfJePqJLgLcw==
X-Google-Smtp-Source: AGHT+IEyuXVW566O3RNTfyuBIotpKpAj3d73M0jwBW7iCQ7XMka4YjK1+KA+7mJSS/drlfp9Djuxc6HCIOd4cuWFUYs=
X-Received: by 2002:a05:6122:1e14:b0:50a:bd30:c139 with SMTP id
 71dfb90a1353d-50c855b0d97mr6182850e0c.11.1728302692297; Mon, 07 Oct 2024
 05:04:52 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Mon, 7 Oct 2024 14:04:37 +0200
Message-ID: <CAG16vQWrq0sFEs=C6jBSnm9uCdC=cmtWAQ-LV=1iiXkhYqGXLQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 3N7IHKEH7V6JXZTJSCIIIZMQTTGH4OGZ
X-Message-ID-Hash: 3N7IHKEH7V6JXZTJSCIIIZMQTTGH4OGZ
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Antena selection with RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3N7IHKEH7V6JXZTJSCIIIZMQTTGH4OGZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8383019774478599446=="

--===============8383019774478599446==
Content-Type: multipart/alternative; boundary="00000000000009f2e00623e1d4a5"

--00000000000009f2e00623e1d4a5
Content-Type: text/plain; charset="UTF-8"

Hi all,

We are using UHD 4.0 with RFNoC and GNURadio in an E320 device.

We've always used the RF-A antenna channel without problems, but now we are
trying to use the RF-B channel and are unsure how to configure the rfnoc
radio block to do that.
We have also tried to put both channels receiving and transmitting but only
the RF-A LEDs are on. We do the same with the UHD source block, and it
works that way.
How can we configure the RFNoC radio block second channel?

Kind Regards,

Maria

--00000000000009f2e00623e1d4a5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>We are using UHD 4.0 with RFNoC=
 and GNURadio in an E320 device.</div><div><br>We&#39;ve always used the RF=
-A antenna channel without problems, but now we are trying to use the RF-B =
channel and are unsure how to configure the rfnoc radio block to do that.</=
div><div>We have also tried to put both channels receiving and transmitting=
 but only the RF-A LEDs are on. We do the same with the UHD source block, a=
nd it works that way.</div><div>How can we configure the RFNoC radio block =
second channel?</div><div><br></div><div>Kind Regards,</div><div><br></div>=
<div>Maria</div><div><br></div></div>

--00000000000009f2e00623e1d4a5--

--===============8383019774478599446==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8383019774478599446==--
