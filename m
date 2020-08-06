Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9B223D546
	for <lists+usrp-users@lfdr.de>; Thu,  6 Aug 2020 04:09:37 +0200 (CEST)
Received: from [::1] (port=46110 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k3VLX-00089l-TD; Wed, 05 Aug 2020 22:09:31 -0400
Received: from mail-qk1-f179.google.com ([209.85.222.179]:32783)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k3VLT-0007yb-P2
 for usrp-users@lists.ettus.com; Wed, 05 Aug 2020 22:09:27 -0400
Received: by mail-qk1-f179.google.com with SMTP id l23so43689821qkk.0
 for <usrp-users@lists.ettus.com>; Wed, 05 Aug 2020 19:09:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=TXW4CnLmQNcrTg2z1oEdp+DF+jMNxzpfWeMI9C+T1xU=;
 b=kWQV2CqL5CXd3RF9jW9mY7Xq8AqaR6N6kbSTTo3o6gCC0UUu5sy39drmfUp69x1yw/
 //8oP67KqQgVdj7SAuAOsSbXVwFA9cW4K/TBFyXIFFeqYIlCZjX+JPCcrXZ1364hsAME
 vDU9OFHOmaEDAOZTXs1LrDPSPyChW/NWBs8/yxPA10ZJKkAjW3Xo+YNWKaHH+waXyRd/
 6aNmFMjmVBjbPTgP51yR9qqlXwAZMpPm6jT/Mfq7rJkODJxH3kSYZmkjQ61wUanyVEdk
 enL+SOQryYeidpc5HLTSTsPk+dSKkgBsqgs9CLiUzdQbd6+L2Oae8SCiQ2UE1sldHi83
 Nzkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=TXW4CnLmQNcrTg2z1oEdp+DF+jMNxzpfWeMI9C+T1xU=;
 b=TZV7ZW6hBnO+v7+kdN+0tdYmHyO4tdW24nm0Ow1qRHfmF8bxs4EDD1RUmTbPARp+T1
 f33vRkhmhiOt2nK4/H+HQTs9avBT5CcW8lPW5h9g91oQES+CSX9TKZD588tzYWw3s4g0
 tPsEv2ItCmVhy7blITIt3UP2mPZ6A21bkA+tTi7x2qdyNZSSQxj4XzFQEOYmD91EBUQo
 8lNWbAa4nZxhbhgAERQ8yZbMQxXrOJRNVU40+Cfdbrft8xHt03LF8aocWkX54GgtrFUQ
 B8OwphaETiucTzXNejdBJrFH9T4seuKE/RWqow1PNr3Ak3zwXL88jOyqz9POZs9VY8/P
 qMJg==
X-Gm-Message-State: AOAM530xHEz0w+VoaQkEgfw1heKvRVrK6AmZEldJd6V6TAN+ZhcUp58s
 TTQfymJvT+MGaX/XT6ge/O84z+y1ZaU=
X-Google-Smtp-Source: ABdhPJxmLkUGiPj+2e1VVeFVQ7SvZ9kOHNGHZBRadOhmlz4JDYg3q3OFt+pkIUakSjqRcz4sEhTqmw==
X-Received: by 2002:a05:620a:22b4:: with SMTP id
 p20mr6062510qkh.340.1596679726783; 
 Wed, 05 Aug 2020 19:08:46 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id r6sm3252169qkc.43.2020.08.05.19.08.45
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Aug 2020 19:08:46 -0700 (PDT)
Message-ID: <5F2B662D.1090204@gmail.com>
Date: Wed, 05 Aug 2020 22:08:45 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <MW3PR19MB42689B9327EF7D5DE58E3739C6480@MW3PR19MB4268.namprd19.prod.outlook.com>
In-Reply-To: <MW3PR19MB42689B9327EF7D5DE58E3739C6480@MW3PR19MB4268.namprd19.prod.outlook.com>
Subject: Re: [USRP-users] Signal transmission on a USRP X310
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
Content-Type: multipart/mixed; boundary="===============8250049297752603447=="
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
--===============8250049297752603447==
Content-Type: multipart/alternative;
 boundary="------------090302050207020207080107"

This is a multi-part message in MIME format.
--------------090302050207020207080107
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 08/05/2020 08:59 PM, Jerrid Plymale via USRP-users wrote:
>
> Upon fixing this problem I stumbled on another issue I have been 
> scratching my head over this week without any success. When I turn on 
> the USRP to transmit a signal, and I have muted my signal source 
> blocks in GNU Radio Companion, I am still getting a signal. I have 
> tried using both USRP’s and the same thing happens, a signal appears 
> when no signal source is supplying data to the USRP from the PC, and I 
> do not understand why. The signal is about 2.125 KHz off from the 
> center frequency set in the USRP sink block, with a power of roughly 
> -100 dBm measured by the Spectrum Analyzer I have access to. The 
> signal appears even when I have a null source block connected to the 
> USRP sink block. Is this something that can be fixed or worked around? 
> Is this suppose to happen when transmitting using a USRP x310 and a 
> UBX 40 daughterboard? Any suggestions or insight you can provide would 
> be greatly appreciated.
>
> Best Regards,
>
> Jerrid Plymale**
>
>
Even when you're not sending baseband data, the LO is still operating, 
and no mixers  have perfect LO/RF port isolation, so there'll be
   some leakage.

A -100dBm signal is pretty darned weak.  Something you can try is to 
lower the RF gain when you're not transmitting.

--------------090302050207020207080107
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/05/2020 08:59 PM, Jerrid Plymale
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:MW3PR19MB42689B9327EF7D5DE58E3739C6480@MW3PR19MB4268.namprd19.prod.outlook.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1"><br>
        <p class="MsoNormal">Upon fixing this problem I stumbled on
          another issue I have been scratching my head over this week
          without any success. When I turn on the USRP to transmit a
          signal, and I have muted my signal source blocks in GNU Radio
          Companion, I am still getting a signal. I have tried using
          both USRP’s and the same thing happens, a signal appears when
          no signal source is supplying data to the USRP from the PC,
          and I do not understand why. The signal is about 2.125 KHz off
          from the center frequency set in the USRP sink block, with a
          power of roughly -100 dBm measured by the Spectrum Analyzer I
          have access to. The signal appears even when I have a null
          source block connected to the USRP sink block. Is this
          something that can be fixed or worked around? Is this suppose
          to happen when transmitting using a USRP x310 and a UBX 40
          daughterboard? Any suggestions or insight you can provide
          would be greatly appreciated.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Best Regards, <o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Jerrid Plymale<b><o:p></o:p></b></p>
      </div>
      <br>
    </blockquote>
    Even when you're not sending baseband data, the LO is still
    operating, and no mixers  have perfect LO/RF port isolation, so
    there'll be<br>
      some leakage.<br>
    <br>
    A -100dBm signal is pretty darned weak.  Something you can try is to
    lower the RF gain when you're not transmitting.<br>
  </body>
</html>

--------------090302050207020207080107--


--===============8250049297752603447==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8250049297752603447==--

