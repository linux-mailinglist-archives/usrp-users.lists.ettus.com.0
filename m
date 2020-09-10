Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF4F264DDC
	for <lists+usrp-users@lfdr.de>; Thu, 10 Sep 2020 20:54:34 +0200 (CEST)
Received: from [::1] (port=45992 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kGRiJ-0007bx-7i; Thu, 10 Sep 2020 14:54:31 -0400
Received: from mail-qv1-f47.google.com ([209.85.219.47]:40864)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kGRiF-0007Vv-3q
 for usrp-users@lists.ettus.com; Thu, 10 Sep 2020 14:54:27 -0400
Received: by mail-qv1-f47.google.com with SMTP id j3so3872984qvi.7
 for <usrp-users@lists.ettus.com>; Thu, 10 Sep 2020 11:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=lhECuteTtzh4SR2oxxn+sjtcR59lwtbBSIX9YG2IjG0=;
 b=Azon1rKC4er4G9I10drbWFgyCgssIQUyy/gA08b61/u32t4ks+51Ox7jlOm1IhdVUV
 3T+LG4xin35SbfqjBNCR2FwXhtnSoIOOIKJhv/Ajr7XsTzAXas20Hdl0akpMqP30dMJL
 UIo7MzrEg1hgbLTasdoXsWlYVoxK5cE12qMMOcohGWjUHIu7PWY3P/GuiJM0xA56i8K4
 HNI1JOvmJhog0jiTBx12tT/R8PWqXuwIuZl8Bw8frvdhNxsEwZaklmeMg0VvDKiOfHZx
 y4mI7nLy100tfB9hlnRU3zLhlHKCoHfehN7d2qkNaYdLcmAeKcokYxYDtLLCX+ER1H6u
 3+SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=lhECuteTtzh4SR2oxxn+sjtcR59lwtbBSIX9YG2IjG0=;
 b=GkfE9fVaU0F9xbL3+WzUf9AHJt2TS6H+6633mvT/6jhBb9v4fdXfgJFUyeCHK83U7R
 U29WydA9uUbsHyyEKYfSNT0f+OPDSQHzgeP/GGymMOoME+B6roigGGdGy4/mySNmmMIp
 WT+2yOXGiq+sOOuKn9Yv5rz6QRcbayHzlJiP1cI11j2ndokCWrcwK0oBFArnTR/XX6BT
 0Y6GdtbjXXfxn2/LPQ2JGX8+0O9IXbHQh5a79LHeOHHC8IessyoH3EaiaNHtWdUyFWgS
 Q/pA2lextRaFCayK+M64rrBtItK5jHv2U6RwbjZ7KIjTyXj9PNnevX937VWTgnDFp1g5
 gT8w==
X-Gm-Message-State: AOAM530XzkEVTUUOxJ6V8Mq+15AVFXi1Ex0/SWd7myjuQAWuaak9aSIK
 uchXbgmPVznM7c4QI6KYXdsoJ1hdkqzurQ==
X-Google-Smtp-Source: ABdhPJxVbvXa75V+k4prcDg0AcEPjJMeCh0Vs9GyJBRs5skBkfZA5yYbahPvEJeo3VuurYo32dUz2Q==
X-Received: by 2002:ad4:534c:: with SMTP id v12mr9828809qvs.27.1599764026323; 
 Thu, 10 Sep 2020 11:53:46 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id g25sm7731636qto.47.2020.09.10.11.53.44
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Sep 2020 11:53:45 -0700 (PDT)
Message-ID: <5F5A7638.8010704@gmail.com>
Date: Thu, 10 Sep 2020 14:53:44 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Xiang Ma <marxwolfs@gmail.com>
CC: usrp-users@lists.ettus.com
References: <CACryqrG8a3S1ARULWRPYte8aoUVmh8B-qBxjX6GS_j_kam_q-w@mail.gmail.com>
 <5F5A50F1.4080500@gmail.com>
 <CACryqrG3Eo6KTFM1v2SpA2Dc8Q71iznrLtai=79bPWgDG=xXRw@mail.gmail.com>
 <5F5A52C5.20703@gmail.com>
 <CACryqrG_kG4==1T_zjWqNPENWoe3y5ff7j9EOeHxQqFv1tFnmg@mail.gmail.com>
 <5F5A54F9.2000502@gmail.com>
 <CACryqrHxwT6RF_xoU=q9n3JSp+fBGyoHZO-+ifG_oxas3Hw2wA@mail.gmail.com>
In-Reply-To: <CACryqrHxwT6RF_xoU=q9n3JSp+fBGyoHZO-+ifG_oxas3Hw2wA@mail.gmail.com>
Subject: Re: [USRP-users] RuntimeError: System receive MTU size
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
Content-Type: multipart/mixed; boundary="===============5383456329664614567=="
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
--===============5383456329664614567==
Content-Type: multipart/alternative;
 boundary="------------040609070102010602080508"

This is a multi-part message in MIME format.
--------------040609070102010602080508
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/10/2020 02:06 PM, Xiang Ma wrote:
> I tried several commands including benchmark_rate, there are no 
> explicit errors.
>
> But I find my USRP is x310 with 2 UBX-160 daughtboards. But the rfid 
> code is N200 with only 1 daughterboard slot.
> This is the python code generated by my grc:
> /self.uhd_usrp_source_0.set_samp_rate(samp_rate)
>         self.uhd_usrp_source_0.set_center_freq(89500000, 0)
>         self.uhd_usrp_source_0.set_gain(0, 0)
>         self.uhd_usrp_source_0.set_auto_dc_offset(True, 0)
>         self.uhd_usrp_source_0.set_auto_iq_balance(True, 0)/
> /
> /
> This is the code of rfid:
> /self.source = uhd.usrp_source(
>     device_addr=self.usrp_address_source,
>     stream_args=uhd.stream_args(
>     cpu_format="fc32",
>     channels=range(1),
>     ),
>     )
>     self.source.set_samp_rate(self.adc_rate)
>     self.source.set_center_freq(self.freq, 0)
>     self.source.set_gain(self.rx_gain, 0)
>     self.source.set_antenna("RX2", 0)
>     self.source.set_auto_dc_offset(False) # Uncomment this line for 
> SBX daughterboard/
>
> Is it a reason why the error occurs?
>
> Best.
>
Can you share the .grc code ?

Do you have both an N200 and an X310 plugged in to your system, or just 
the X310?

--------------040609070102010602080508
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/10/2020 02:06 PM, Xiang Ma wrote:<br>
    </div>
    <blockquote
cite="mid:CACryqrHxwT6RF_xoU=q9n3JSp+fBGyoHZO-+ifG_oxas3Hw2wA@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>I tried several commands including benchmark_rate, there
          are no explicit errors.</div>
        <div><br>
        </div>
        <div>But I find my USRP is x310 with 2 UBX-160 daughtboards. But
          the rfid code is N200 with only 1 daughterboard slot.</div>
        <div>This is the python code generated by my grc:</div>
        <div><i>self.uhd_usrp_source_0.set_samp_rate(samp_rate)<br>
                    self.uhd_usrp_source_0.set_center_freq(89500000, 0)<br>
                    self.uhd_usrp_source_0.set_gain(0, 0)<br>
                    self.uhd_usrp_source_0.set_auto_dc_offset(True, 0)<br>
                    self.uhd_usrp_source_0.set_auto_iq_balance(True, 0)</i></div>
        <div><i><br>
          </i></div>
        <div>This is the code of rfid:</div>
        <div><i>self.source = uhd.usrp_source(<br>
                device_addr=self.usrp_address_source,<br>
                stream_args=uhd.stream_args(<br>
                cpu_format="fc32",<br>
                channels=range(1),<br>
                ),<br>
                )<br>
                self.source.set_samp_rate(self.adc_rate)<br>
                self.source.set_center_freq(self.freq, 0)<br>
                self.source.set_gain(self.rx_gain, 0)<br>
                self.source.set_antenna("RX2", 0)<br>
                self.source.set_auto_dc_offset(False) # Uncomment this
            line for SBX daughterboard</i></div>
        <div><br>
        </div>
        <div>Is it a reason why the error occurs?</div>
        <div><br>
        </div>
        <div>Best.<br>
        </div>
      </div>
      <br>
    </blockquote>
    Can you share the .grc code ?<br>
    <br>
    Do you have both an N200 and an X310 plugged in to your system, or
    just the X310?<br>
  </body>
</html>

--------------040609070102010602080508--


--===============5383456329664614567==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5383456329664614567==--

