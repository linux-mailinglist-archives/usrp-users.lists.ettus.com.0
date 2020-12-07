Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2152D1A78
	for <lists+usrp-users@lfdr.de>; Mon,  7 Dec 2020 21:26:11 +0100 (CET)
Received: from [::1] (port=39430 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kmN5E-0003OW-Eb; Mon, 07 Dec 2020 15:26:08 -0500
Received: from mail-qt1-f173.google.com ([209.85.160.173]:40721)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kmN5A-0003JR-Sz
 for USRP-users@lists.ettus.com; Mon, 07 Dec 2020 15:26:04 -0500
Received: by mail-qt1-f173.google.com with SMTP id p12so10390934qtp.7
 for <USRP-users@lists.ettus.com>; Mon, 07 Dec 2020 12:25:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=g6amNzl2ba2kXdDvjx0wegglvtax4IEldznW5AkOPGQ=;
 b=AIxt22b1GVCUQAbyNV4arDlh9JGFsIGgnlagM8X8OAviyFE7uSK8LplcPo0DlmKmOq
 CnkxQrjWg1AEd3LorZTPLmiK7YpJ5wot+UBNDTHadv/h4JoCQLxSKVjpySU8vynpmQ0B
 klsDZ7ESgftnpNs2iuz26Arc6H8qXY8AvrXAmxJ2lwQXm8CXCYlmd9tZs+j+WAmfowPq
 87SoIXr82ERm7qOHQxcjxeOSayQ7+IK3jkfbT9EkIaVNj0wvRKxRGDtIp2t0HDskj3jF
 y72xa/Rdl7sPpJH1a66e7uS+x2tWtVvz0rGbl/doVTh8+JSwJ2NeoOuy/8PUqz1uuUOH
 wYkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=g6amNzl2ba2kXdDvjx0wegglvtax4IEldznW5AkOPGQ=;
 b=ZFMrIfTgVmbG28E0dGjqRH9Wubaf+UnMZWKnVXZx0DlYyAEiVg2Dzgo92/xS69RWET
 plsaEuBAgHKcPbzsQlCqDxw+3A17wdc/ijlLWYc0D13scm9eCK00p4CYehinmv2qhKLC
 HaEadTuFrr6rIJAEE3dfDt0P/2QSayCZBghvLrFvG1e6LmHDrFdq7afMH4QAfHZ+lNxw
 QlEZfVqm8jTk6Q07XmlWsznB+NgfmJrg2L0EjzbPjZq9AwUJc1Ds6L+k/SQhSUMyDt/i
 mjwuoi7qOY0isuJTVFWIJhE1WeF02uiRdV6h+IumhdeK09omfSxVuGSfm8zJJksDDcNV
 8qhQ==
X-Gm-Message-State: AOAM532FR/JraRvKGkqIBERp74dLzL4mCi34WOcvVPjixAuEeSPwsOAY
 nUtfvipuUFgW4nOnD92i0kxOwNfCryw=
X-Google-Smtp-Source: ABdhPJxPE5emJO+tmcL70DAzU/c8rydaCkkQ9tsBvCNoTJfeMCDIvzIUeGBA/R8AK2PMMW+8E0PJzQ==
X-Received: by 2002:ac8:6d0a:: with SMTP id o10mr17592647qtt.113.1607372724113; 
 Mon, 07 Dec 2020 12:25:24 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id x21sm12057313qkx.31.2020.12.07.12.25.23
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 07 Dec 2020 12:25:23 -0800 (PST)
Message-ID: <5FCE8FB2.9040100@gmail.com>
Date: Mon, 07 Dec 2020 15:25:22 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Lukas Haase <lukashaase@gmx.at>
CC: USRP-users@lists.ettus.com
References: <trinity-a9e545d1-8706-4d8e-aeb5-1c2492fc8b6c-1606726945931@3c-app-gmx-bap15>
 <D28E5616-DFCA-498D-9136-634583AB43EB@gmail.com>
 <trinity-d628c5aa-086f-4f3b-baf9-b2a1baa0f3a3-1606762444896@3c-app-gmx-bs06>
 <5FC56D41.8030400@gmail.com>
 <trinity-2d019907-a4ad-4db8-96ab-f6af03a7ef20-1607304823144@3c-app-gmx-bap46>
In-Reply-To: <trinity-2d019907-a4ad-4db8-96ab-f6af03a7ef20-1607304823144@3c-app-gmx-bap46>
Subject: Re: [USRP-users] UBX160 TX "noise figure"?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============7908244967869805461=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

This is a multi-part message in MIME format.
--===============7908244967869805461==
Content-Type: multipart/alternative;
 boundary="------------050301030308050301090209"

This is a multi-part message in MIME format.
--------------050301030308050301090209
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/06/2020 08:33 PM, Lukas Haase wrote:
> Hi Marcus,
> Thanks again!
> I did now the following experiment: I connected TX to RX back-to-back 
> with 46.43dB attenuation in between. I set TX gain and RX gain to 20dB 
> and transmit a single CW at -3dBFS.
> This means my output power is *Pout=11.44dBm* (cross checked with 
> spectrum analyzer) and on RX I sould have Pin=-34.99dBm. Indeed, 
> calculating the RMS of the received signal and converting to dBm, I 
> get *Pin=-35.0224dBm*. Spot on!
> The red line is what I receive on the PSD (blue is the TX that I send):
> As you can see from the annotation, the measured "SNR" of the received 
> signal is only 38.7dB. I think this is mainly caused by the phase 
> noise skirt (and potentially the I/Q image).
> In order to keep only consider thermal noise, I add random noise to 
> the original CW (using randn(...)+1i*randn(...) in MATLAB) until it 
> matches roughly the white noise floor of the received signal. It's 
> *SNRoutput=50dB* (yellow line).
> Now, according to our discussion below, at Gtx=20, we should have 
> *SNRoutput=72dB* (assuming thermal noise only).
> Where could the *22dB difference* in SNR come from?
> Thanks!
> Lukas
> PS: I am aware of phase noise, DC offsets, I/Q imbalance etc. But as 
> you can see from my plot, I am /only /considerung thermal noise. The 
> thermal noise of the receiver should be orders of magnitude lower (at 
> least -102dBm) so the receiver noise should not limit the results either.
>
This is a UBX-to-UBX loopback, or UBX-to-TwinRX loopback?   The gain 
ranges on the two are different.



--------------050301030308050301090209
Content-Type: multipart/related;
 boundary="------------020906000005030904060005"


--------------020906000005030904060005
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 12/06/2020 08:33 PM, Lukas Haase
      wrote:<br>
    </div>
    <blockquote
cite="mid:trinity-2d019907-a4ad-4db8-96ab-f6af03a7ef20-1607304823144@3c-app-gmx-bap46"
      type="cite">
      <div style="font-family: Verdana;font-size: 12.0px;">
        <div>Hi Marcus,</div>
        <div> </div>
        <div>Thanks again!</div>
        <div> </div>
        <div>I did now the following experiment: I connected TX to RX
          back-to-back with 46.43dB attenuation in between. I set TX
          gain and RX gain to 20dB and transmit a single CW at -3dBFS.</div>
        <div>This means my output power is <strong>Pout=11.44dBm</strong>
          (cross checked with spectrum analyzer) and on RX I sould have
          Pin=-34.99dBm. Indeed, calculating the RMS of the received
          signal and converting to dBm, I get <strong>Pin=-35.0224dBm</strong>.
          Spot on!</div>
        <div> </div>
        <div>The red line is what I receive on the PSD (blue is the TX
          that I send):</div>
        <div> </div>
        <div><img src="cid:part1.00070307.01000904@gmail.com"></div>
        <div> </div>
        <div>As you can see from the annotation, the measured "SNR" of
          the received signal is only 38.7dB. I think this is mainly
          caused by the phase noise skirt (and potentially the I/Q
          image).</div>
        <div>In order to keep only consider thermal noise, I add random
          noise to the original CW (using <span
            style="font-family:Courier New,Courier,monospace;">randn(...)+1i*randn(...)</span>
          in MATLAB) until it matches roughly the white noise floor of
          the received signal. It's <strong>SNRoutput=50dB</strong>
          (yellow line).</div>
        <div> </div>
        <div>Now, according to our discussion below, at Gtx=20, we
          should have <strong>SNRoutput=72dB</strong> (assuming thermal
          noise only).</div>
        <div> </div>
        <div>Where could the <strong>22dB difference</strong> in SNR
          come from?</div>
        <div> </div>
        <div>
          <div>Thanks!</div>
          <div>Lukas</div>
          <div> </div>
          <div> </div>
          <div>PS: I am aware of phase noise, DC offsets, I/Q imbalance
            etc. But as you can see from my plot, I am <em>only </em>considerung
            thermal noise. The thermal noise of the receiver should be
            orders of magnitude lower (at least -102dBm) so the receiver
            noise should not limit the results either.</div>
          <div> </div>
          <br>
        </div>
      </div>
    </blockquote>
    This is a UBX-to-UBX loopback, or UBX-to-TwinRX loopback?   The gain
    ranges on the two are different.<br>
    <br>
    <br>
  </body>
</html>

--------------020906000005030904060005
Content-Type: image/png
Content-Transfer-Encoding: base64
Content-ID: <part1.00070307.01000904@gmail.com>

iVBORw0KGgoAAAANSUhEUgAAAjAAAAGkCAIAAACgjIjwAAAACXBIWXMAAA7EAAAOxAGVKw4b
AAAAB3RJTUUH5AwHARMKmd7kNwAAACR0RVh0U29mdHdhcmUATUFUTEFCLCBUaGUgTWF0aFdv
cmtzLCBJbmMuPFjdGAAAACJ0RVh0Q3JlYXRpb24gVGltZQAwNi1EZWMtMjAyMCAyMDoxOTox
MAyXVnwAACAASURBVHic7N15XBN3/j/wD0NCQsDIfQgph1Q81rZaAcUqx1ra+quLJ17V6tqu
tbXFaq3rdlfKrn5bW8/Wo91vz+2l1KPW1lbWr4IHCFZtrdHiiSYgchMhB5kMvz8+dZpyiTAw
E3g9Hz58TCaTz3wyTOY9n2M+H6eGhgYCAAAgNkbsDAAAABCCgAQAABKBgAQAAJKAgAQAAJKA
gAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKA
gAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKA
gAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKAgAQAAJKAgAQAAJIgEzsDnejtt98WOwsA
ABLy/PPPi52F1nTbEtLbb7+dn58vbh42bdokbgZ2795dVFQkYgaKiop2794tYgaIBP4K+fn5
OBVxKhIJ/BXy8/MlfpvenUtI0dHRIt4O0B+AuPcj+fn5EydOjI6OFjEDRUVF4h6E3bt3T5w4
MSgoSKwM0EsATkWcihI5FaWs25aQAADAsSAgAQCAJHTnKjvRvfTSS+JmICkp6b777hMxA/7+
/rNmzRIxA4SQWbNm+fv7i5iB+++/X9wMEJyKOBUdBAJSZ/H39xf3F0gIefjhh8XNgL+/v0Kh
EDcPoh8E0U8DnIoEp6KDQJUdAABIAgISAABIAgISAABIAgISAABIAgISAABIAgISAABIArp9
d9ZwGizLms1md3f3zki8jWpra5VKpUwm2l/ZQQ+CxAegBOiuenoJqfPGYJXJZOJeiAkh7u7u
IkYj4pgHQfoDUAJ0VyghiTwGK0gNohGAWHp6CQkAACQCAQkAACQBAQkAACQBAQkAACQBAQkA
ACQBAckB/PLLL4sWLZo4ceKTTz6Zm5tLV65bt+7EiRN0mWXZp59++sCBA/Qlx3Hz5883Go3i
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
CVqFElKLLkzuI8p+++1ocb4JewzDZGVlvfrqq3TkugkTJrzyyisDBw6k744fP57Gj5MnT/br
12/btm10/aJFi+j6S5cu6fX6cePGtSPx/v37L1++fNasWXl5eY0+2HS/gYGBLQ10/dVXX61c
ubKoqIjWzjEMk5qaOmfOnAEDBly/fv1f//pX04/cuHFjy5YtV69epS/r6uqUSiWfZ4ZhWJbl
C0M7d+6k8Y8QsmnTpj179tD19CN0y/3797dykAGgKyEgtaiNgaFTNS3x2I8kGxIS8uGHH77/
/vsnTpz48ssvhw8ffv78eTpRxdKlSxmGOX36dGFh4aeffhoYGFhfX08I6d+/v0wmYxhm5MiR
48aNowNRN6uVxAkhy5cv37lz5+rVq/v0+V3YbrpfnU6XlZVlv018fLxGoyGEjB8/fvz48V9/
/fUjjzyi0+kOHTq0adOma9eueXp67tu3749//CMfeHjvvffepEmT+NmtGg30Tmdw518ePHhw
wIABdHn06NF8QKIBkuO4b7755rHHHtNqtSEhIS0dBwDoMghIkiaTyRQKRWFhId+r7cKFC66u
roSQ7Ozsb7/99o033mAYhravnD17Ni8vj3ZsGzlypIuLS1xcXFVV1R//+MczZ87QK/Uzzzxj
35rSktYTpz799NPo6OhGE3w03W9FRcXhw4fttxk8eDAhpKSkhI5J+Kc//Sk5OdlsNufk5Iwa
NYrWLo4dO/bmzZu1tbWNQuaePXtWrFjBv/T09Lx16xZdrqiocHFxsa+EdHNzq6uro8sWi6XR
d2QY5k9/+lO/fv1Onz6NgAQgBWhDkrrExMTXXnuNlgOKioq2bds2YcIEQohGo3nrrbf4/mln
z549efLkH/7wh0YfT0tLk8lkzVZ/8bKzsysqKuzXtCXx/v37v/LKK6tXr242TX6/DzzwwP/+
3gMPPHDp0qVZs2bRkso333wTGhqqVCqjoqLy8vLoyhMnTri5ualUKvvssSx75swZ+5Hd4+Pj
v//+ezon5scff9yop/iECROys7Nra2sJIV999VXTTGZmZp45c4avigQAcaGEJHXvv//+jBkz
VCqVSqUyGo3Lly8fP348ISQ8PHzXrl3PP//87NmzXVxcFArFunXr+vXrR6vmeAzDfPjhhyNH
jpw8eXJLuxg3bty2bdvsL/RtTHzZsmWN5r9out/p06c3DZMJCQnjx4+/7777IiIizp8/T5u4
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
--------------020906000005030904060005--

--------------050301030308050301090209--


--===============7908244967869805461==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7908244967869805461==--

