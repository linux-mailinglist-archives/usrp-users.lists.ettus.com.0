Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FB552C479
	for <lists+usrp-users@lfdr.de>; Wed, 18 May 2022 22:39:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D17F3384AF1
	for <lists+usrp-users@lfdr.de>; Wed, 18 May 2022 16:39:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652906345; bh=GFDMr4LmAJ4JC7sRtP0+ACExDHevgZyiR5Ib/gu7C2M=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=KzBW3v8dZ9tdh13+wuhsxieAeQob+BgL0o2c9xqu8+0zS50KuwYbx5+/dVvpDkiUm
	 I5MNoPStIYOl1aqVhIRZ6SFbZ5Ld+fCdFMTw6PlEHwuv/QXOZSse1+0v141gvBUVUu
	 M7cSqjI6BB/eQ+KZydGdvAUWPSDyHrUM8VqUdkq2xcMXyl3XbwZG54xLQ2O+Ihd7JA
	 tM25GRrB2j7ZCKtO78nElmoNXHmiypzuY3bWOf+AWZ6MwJGDe5jRMz+ogAgsi4PvMR
	 hWnPn7R59suqZ4Y7PwVobeelDaihr+keldlpkR2I3aQ1SqXxs2ra9M1pzerUeaaoH8
	 oegMpROiTaJZA==
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 16E773845BD
	for <usrp-users@lists.ettus.com>; Wed, 18 May 2022 16:38:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YRql+trz";
	dkim-atps=neutral
Received: by mail-qt1-f173.google.com with SMTP id o22so259733qta.6
        for <usrp-users@lists.ettus.com>; Wed, 18 May 2022 13:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=yhk/R8izTuvO1telwtmwEStINuqevvwmyufRzHF+LPs=;
        b=YRql+trz/4UExzfdJ9mwr/KvERwlkD1z77wyxQY9A5Dh+PVDqI7tC5o1smFP95WuYA
         w0CJzz3TfI0YBR7tQAsgfLEhiK8pmcKbsbJjS0zUNLgpafKICui9p62dYRsnp+fvfpgh
         WiAhS6y80VNcdxO8MmjvVaUveearJ+SWHpi7dnLnrUj0JV3LdpoO2dJWtwmsCroEUAG4
         oNAO34Prgq8jQTBjiEoqa4fdSk6ajRhhzqH/qcThyooG2kqqjXJzM1Zen8cTK2cNbK63
         v1ZnCO7jzH4wQlA2vl07/ydDyE8rmkrclgmGMaPL/fUQlYp3cYoEg+4VbLkEyMPCkiM+
         zsTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=yhk/R8izTuvO1telwtmwEStINuqevvwmyufRzHF+LPs=;
        b=YxWwRhvtQF7WyGAQBNMxEeIw3ca5AYMIUVFPvL/xMPFmlwPohmlvGAZjs1tOF7dHVr
         cP6J/Hr8RTp2ey25R3L+sDhW3b7epkbfoLuPeJZKVonVe+EBJzJQukLx8KCm97ti2Gmm
         0fYlwUAWXxWKPygqeBMey+hiKn+X3SpqTxI6ldNVRowDMlULIrYdU0MmzcBRCWngXeda
         McjmPW67NTNfP3kWKM+m0S2v4QIqH4Zo6n148UCVJtX7m5/V3p4+Xi564hCOYbuKnlAP
         fyKXpSeTwdyn5RR0ubpJTg5PcYiniNtB9JqQ5VhjW7b28fJ1drY7V/TRUlobqzEyEQID
         OuxQ==
X-Gm-Message-State: AOAM5322WTjGxU+aoxYi3R5iYLio8JMnGIzUFA8jw13LJ+Veok3ONVPL
	CEgKHMRNxqJTvawIhy4KK/aPdi5t78I=
X-Google-Smtp-Source: ABdhPJznrkbgi5TFnp/l8d1JN5uN9qSHMcx5A89kyTLlIbsoqlbnSN3xrP+Fe5ptb9phPXbpFyE5JA==
X-Received: by 2002:a05:622a:551:b0:2f3:d590:9a5e with SMTP id m17-20020a05622a055100b002f3d5909a5emr1406378qtx.165.1652906286479;
        Wed, 18 May 2022 13:38:06 -0700 (PDT)
Received: from [192.168.2.203] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id k128-20020a37ba86000000b0069c72b41b59sm181123qkf.2.2022.05.18.13.38.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 May 2022 13:38:06 -0700 (PDT)
Message-ID: <ced11a08-6327-31d0-de10-f3afc411b5b8@gmail.com>
Date: Wed, 18 May 2022 16:38:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Brian Padalino <bpadalino@gmail.com>
References: <5MRZslBCn8543oJnh1vGlSlOw7dYQTzWCtpBw9jo@lists.ettus.com>
 <19dbac4c-acc4-3827-83d2-982d0fa83ddf@gmail.com>
 <CAEXYVK4e6vn5r73UTpfbrdU4A31pKkgM0AuU2y+cEyTyfxQ5bg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAEXYVK4e6vn5r73UTpfbrdU4A31pKkgM0AuU2y+cEyTyfxQ5bg@mail.gmail.com>
Message-ID-Hash: MAC5RRICMENMLIQHSOZOYPCOL7WXWF3N
X-Message-ID-Hash: MAC5RRICMENMLIQHSOZOYPCOL7WXWF3N
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: b200 mini LVDS Vs CMOS
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MAC5RRICMENMLIQHSOZOYPCOL7WXWF3N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7970401180872915677=="

This is a multi-part message in MIME format.
--===============7970401180872915677==
Content-Type: multipart/alternative;
 boundary="------------Ai9e1Q6YuGQVt0PIQhzpFU3k"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Ai9e1Q6YuGQVt0PIQhzpFU3k
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-05-18 16:28, Brian Padalino wrote:
>
> I believe this is a slightly different issue.=C2=A0 The previous issue =
was=20
> the LVDS interface is already used, but the faster 61.44 Msps was not=20
> supported for dual channel operations.=C2=A0 The FPGA used is a Zynq de=
vice=20
> on the E320.
Thanks for having a better memory :)

>
> The interface here is CMOS and talking to a Spartan 6 device with a=20
> bank voltage of 1.8v.=C2=A0 This inherently makes it impossible to prog=
ram=20
> the FPGA for those pins to utilize LVDS.
>
>
Thanks, I only "play hardware guy" in very limited contexts.=C2=A0=C2=A0 =
Yeah, it=20
looks like 2.5V (or hair lower) is the lowest common-mode voltage=20
supported by LVDS.


--------------Ai9e1Q6YuGQVt0PIQhzpFU3k
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-05-18 16:28, Brian Padalino
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAEXYVK4e6vn5r73UTpfbrdU4A31pKkgM0AuU2y+cEyTyfxQ5bg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote"><br>
          <div>I believe this is a slightly different issue.=C2=A0 The
            previous issue was the LVDS interface is already used, but
            the faster 61.44 Msps was not supported for dual channel
            operations.=C2=A0 The FPGA used is a Zynq device on the E320.=
</div>
        </div>
      </div>
    </blockquote>
    Thanks for having a better memory :)<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAEXYVK4e6vn5r73UTpfbrdU4A31pKkgM0AuU2y+cEyTyfxQ5bg@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <div><br>
          </div>
          <div>The interface here is CMOS and talking to a Spartan 6
            device with a bank voltage of 1.8v.=C2=A0 This inherently mak=
es
            it impossible to program the FPGA for those pins to utilize
            LVDS.</div>
          <div><br>
          </div>
          <div><br>
          </div>
        </div>
      </div>
    </blockquote>
    Thanks, I only "play hardware guy" in very limited contexts.=C2=A0=C2=
=A0 Yeah,
    it looks like 2.5V (or hair lower) is the lowest common-mode voltage
    supported by LVDS.<br>
    <br>
    <br>
  </body>
</html>

--------------Ai9e1Q6YuGQVt0PIQhzpFU3k--

--===============7970401180872915677==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7970401180872915677==--
