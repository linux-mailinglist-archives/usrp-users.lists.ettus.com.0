Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F023A71BF4
	for <lists+usrp-users@lfdr.de>; Wed, 26 Mar 2025 17:32:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 99A81385623
	for <lists+usrp-users@lfdr.de>; Wed, 26 Mar 2025 12:32:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743006773; bh=7pEiEEiPjjd4n8JcDi6VMxQMHXPAGOwbTf5sEWlksRQ=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=cWsQGrIZ3UqP5k4IHMSPE80JC/UPCpLLBji5YLH7q6ev6Qdpwem+50pB/ZWw3E9rQ
	 U3dVsDoPut6exuS0jiPGO0lqqIVnC+swsVBvb9pCvq5fh2avjg2UlVJCuXu/aJGpIj
	 +XoXiU/kY3BcLyeoQ405X0sqlmMYyRhAIP8ePYV1xLrFohAN3bhu+pzpTpFzFnMgFS
	 x++LvusE5jbVyyVtfKZ75goO+alWtQWBRNjUg+vxlWZjY7k9f6Z0dXOeL4/wPzqfVR
	 xQdpKcsDYBruIibU86FEu55rj+0Rk1ZGrSV8unsA9k9OPR80RDpPTOnQ0RNvA/sAtJ
	 trFNrocFTNNYA==
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 546893830B0
	for <usrp-users@lists.ettus.com>; Wed, 26 Mar 2025 12:32:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XMPAdVy5";
	dkim-atps=neutral
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-4766631a6a4so452851cf.2
        for <usrp-users@lists.ettus.com>; Wed, 26 Mar 2025 09:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743006731; x=1743611531; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wjFAmxe0rsGTtQdebW3npxx8kCY6iqbxp345p1hNaBU=;
        b=XMPAdVy5f6p7+yWt+zvNiVBnmrQfetoNVOrys5d8OBl/AQH7+Wfv1yigcUD17DgAkA
         c9ZyOBpIf1GLNgXiEv04tKlvExJ7z7vbVVsNB///CXTSTpybcqmyByBrbpOSZwpoV9u8
         oxBQX1sU1Rw2/K/cKR9ia5Zh1ngggwxd2Oc206q4ttHGsJrsZYTHD1Vaff9v8TTa4/HV
         7l56WyUP4tTTT0rqmr4+3xAiaC19ymwpTxcRQ1thu4Pav5bDvxiPcnB24iGFOpbPK2IL
         8j8SR0mp/2Y9HB83QpZkeD3ie1GfyJMWSlozPJesrXeigpV/1dCSR4rb4M76AHFLYmeP
         SJkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743006731; x=1743611531;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wjFAmxe0rsGTtQdebW3npxx8kCY6iqbxp345p1hNaBU=;
        b=a/e4ZesPWlyIbF2jcVr9p69CayJYFw0FeORoFpCH40K/tEK643Va4yDKYqhvRoMGA6
         9Orehx+PPKjM6k4mzYddvpkcfVA8BOG2VNCsmg50RdIfXYDQrz3zfSOxdXM2Qrl2MyJ1
         gPFdHMTi4/Wr7toaemZv+2ztBKcy68yBEdnpS7pzUd+4n2NDmTpQhsG3FZ98JMrBVj+2
         kZsO1yWVHciam/jS7JlZ9UOW3CKDotkkaxWCLgLA0GYyvxFAgX2qM7rwXbVojvTCquaZ
         rBzcRPx2La+4OLXFRqdyEb8ox3LgsMvzJc4M8IATB5u606iDNfngQ4F6Jv2nYsrDx/V5
         LpDw==
X-Gm-Message-State: AOJu0Ywf+Z1zbfiqAYLUG3HPAqFmLBi8hA73g1KZ330jr7b5ye0AFkKM
	PvUz0lQsiP0RQ+vz57VTsRDvYFsCq2hQXP76y8rYSnPTOl31jgUCktYjDA==
X-Gm-Gg: ASbGnctDhiWkTVyYyg8WJ31ko64wSNya5aNuTDI5hjliQtev3aGybUQZ8Rs/oQA7OlX
	JJZD2CkrPd9mr0ci96X57Z0gC5/5dskB985lrtUj86ust95+ZHK2aDh25fEVuZuDKZaz+grflMc
	cuymEKBPjozpHaOBkkJQSGv1lhxuzdbL9l219kV3A0ZP2lgxxImmCt9u5AS8iQ8gUaxj+OMCUHt
	Mw2Qdd2lDcXBu3NcmD0D2Z9CRzk0a1u7mLe2UggLm+r9OCmi8zGFSxH37vJ7xG8uuGm7tmHKPNu
	oZpzm8Cuxw4heVX5ni9Ky7TcMs5Ehf8C02IV3Glti+xHz6xNemJWpKc=
X-Google-Smtp-Source: AGHT+IH4u2Koze2V48/TxQ+5WJtTu2V6akgNrPecRyG9fgA+fg3ez+QLrkwhZlz08qKwwSGF7Baj6w==
X-Received: by 2002:a05:622a:408f:b0:476:980c:10a9 with SMTP id d75a77b69052e-4776e12ca46mr4948941cf.21.1743006730447;
        Wed, 26 Mar 2025 09:32:10 -0700 (PDT)
Received: from [192.168.2.170] ([142.115.37.13])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6eb3efdbea3sm69135786d6.112.2025.03.26.09.32.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Mar 2025 09:32:10 -0700 (PDT)
Message-ID: <0f97d540-bbd9-4a40-b457-9f3d9adbe6bf@gmail.com>
Date: Wed, 26 Mar 2025 12:31:59 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Rob Kossler <rkossler@nd.edu>
References: <buPmixowFqBNjcHYfLX6r17HUMSoFxZbBs7YZTE1mIg@lists.ettus.com>
 <ebed1fe1-d487-4bf9-8bab-d7ec29ca910b@gmail.com>
 <CAB__hTR-jqCpJvkto9QFfCt1HSeJtU8RuH08tRR_4sjwDuyQWg@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTR-jqCpJvkto9QFfCt1HSeJtU8RuH08tRR_4sjwDuyQWg@mail.gmail.com>
Message-ID-Hash: IYSMQJYSCIPGU7CED4S53LFQGJ4JSZUW
X-Message-ID-Hash: IYSMQJYSCIPGU7CED4S53LFQGJ4JSZUW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [X310] set_command_time introduces unexpected delay dependent on sampling rate.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IYSMQJYSCIPGU7CED4S53LFQGJ4JSZUW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1516181006457133829=="

This is a multi-part message in MIME format.
--===============1516181006457133829==
Content-Type: multipart/alternative;
 boundary="------------nZcI2NcV0Hu67IrDrNnFyZk0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------nZcI2NcV0Hu67IrDrNnFyZk0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 26/03/2025 12:09, Rob Kossler wrote:
>
>
>
> Hi Marcus,
> I think that the gain is set from the "radio" block which operates at=20
> the master clock rate rather than the downconverted rate.=C2=A0 It does=
n't=20
> make sense to me why the latency of the gain setting would be related=20
> to the downconverted sample rate.
> Rob
Let us ignore for a moment the gain-setting hardware on the radio. Let's=20
pretend that some noticeable signal parameter,
 =C2=A0 as seen at the antenna plane, changes suddenly--like the signal l=
evel=20
comes up by 5dB.=C2=A0 How long before that effect is
 =C2=A0 actually seen in the sample stream?=C2=A0 That will depend on the=
 (very=20
small) group delay in the analog hardware, and the delay
 =C2=A0 in the DDC filters, which DOES scale with sample-rate, because=20
different filters are switched-in depending on the commanded
 =C2=A0 sample rate, and those filters have non-zero length...




--------------nZcI2NcV0Hu67IrDrNnFyZk0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 26/03/2025 12:09, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTR-jqCpJvkto9QFfCt1HSeJtU8RuH08tRR_4sjwDuyQWg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr"><br>
        </div>
        <br>
        <div class=3D"gmail_quote gmail_quote_container">
          <div><br>
          </div>
          <div>Hi Marcus,</div>
          <div>I think that the gain is set from the "radio" block which
            operates at the master clock rate rather than the
            downconverted rate.=C2=A0 It doesn't make sense to me why the
            latency of the gain setting would be related to the
            downconverted sample rate.</div>
          <div>Rob</div>
          <div>=C2=A0</div>
        </div>
      </div>
    </blockquote>
    Let us ignore for a moment the gain-setting hardware on the radio.=C2=
=A0
    Let's pretend that some noticeable signal parameter,<br>
    =C2=A0 as seen at the antenna plane, changes suddenly--like the signa=
l
    level comes up by 5dB.=C2=A0 How long before that effect is<br>
    =C2=A0 actually seen in the sample stream?=C2=A0 That will depend on =
the (very
    small) group delay in the analog hardware, and the delay<br>
    =C2=A0 in the DDC filters, which DOES scale with sample-rate, because
    different filters are switched-in depending on the commanded<br>
    =C2=A0 sample rate, and those filters have non-zero length...<br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------nZcI2NcV0Hu67IrDrNnFyZk0--

--===============1516181006457133829==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1516181006457133829==--
