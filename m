Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ECEE216AFF5
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2020 20:07:30 +0100 (CET)
Received: from [::1] (port=37146 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j6J4k-000747-2h; Mon, 24 Feb 2020 14:07:30 -0500
Received: from mail-qk1-f173.google.com ([209.85.222.173]:47002)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1j6J4f-0006tU-Ob
 for usrp-users@lists.ettus.com; Mon, 24 Feb 2020 14:07:25 -0500
Received: by mail-qk1-f173.google.com with SMTP id u124so9632385qkh.13
 for <usrp-users@lists.ettus.com>; Mon, 24 Feb 2020 11:07:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=lsXGlnBLMqoUZALxBON6WIaIGgmxjnUZhnXpIpWJfUo=;
 b=jJMWVIo9hlPj7mNRNCyarWKvv+vN7Ree8nDuaeQX8+9PGprrgV+OTFvo9C/Z2gklpz
 s2JP0d97ig0/Ti33wYbwvB6dXWckSV2LXNWIGsMJ+tu563qfneFu0v3ETTlCVXGlvGCd
 z1oPzB7y8vmZGgiKgXMV/2qkd+0ZmhJVcK5QFSfpDTWRSYhURJcaZD6M+DfhGuF4Cj9Z
 Npys1dK/hzbZMRoy8fu2aOtbB9VRS+JXt4tVTn9h86v2HNY23wqYs+ySW/VNtcyJ0fV6
 k/HQmxOxEDxsaFaJR6jr8t/sLkEv7OYL9cOwVEPHcyrTTzxvhJAQDCAXDhwq2/8kCYry
 pQ4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=lsXGlnBLMqoUZALxBON6WIaIGgmxjnUZhnXpIpWJfUo=;
 b=cSG64sh+TYu9gsU98uVwM74O12h9Uef3dvLALzXlhXUq40sWqkDGyFVCXWiUQmGtCQ
 5Dauw7nnoTx0EwSHrrhyuH41FaexOqXZBh5n2szljuHe6c6IgUqibDyoH69BCR685w5J
 TLowGJyY5dT8yJEWptuwwEAxQrmanY1G5Rn73XZ4CrCrNp8pzQYzyMBBsQnR5noMF6GD
 i4j/8uCv3DbM+rgtoU3419IXE9Q2AKKNj1c+vwiBV+cEMoo7bQfgyTQotk1gA70Ud2T0
 sZgshN5OFRdd/IQu3gah5bfTWgvTtibM4SJCmwcDDKkmpr5OgBhNOVsaPVWKzAIG7Hty
 LJyA==
X-Gm-Message-State: APjAAAV8Jf1FzQartxwx3tEdd5ACJDzOR9ItnvziSJPNfpRoRbRyIZZD
 2Xj/g9GpBL/qPLmU58WF277lVPFWdhE=
X-Google-Smtp-Source: APXvYqz0OTuG6ZzGhID+5PCvKIPArkX9C915tm5Y3+NPNhnsN0oKC56/FOz5YNiQuVGgENS/3LO6lg==
X-Received: by 2002:a05:620a:1235:: with SMTP id
 v21mr18012795qkj.44.1582571205079; 
 Mon, 24 Feb 2020 11:06:45 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id z18sm2535950qki.8.2020.02.24.11.06.44
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Feb 2020 11:06:44 -0800 (PST)
Message-ID: <5E541EC4.4080305@gmail.com>
Date: Mon, 24 Feb 2020 14:06:44 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <220001d5eb45$43fe7cc0$cbfb7640$@sdr-radio.com>
In-Reply-To: <220001d5eb45$43fe7cc0$cbfb7640$@sdr-radio.com>
Subject: Re: [USRP-users] E310, 3.15 LTS, Windows
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Content-Type: multipart/mixed; boundary="===============1798483476439231734=="
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
--===============1798483476439231734==
Content-Type: multipart/alternative;
 boundary="------------060806030109010703090603"

This is a multi-part message in MIME format.
--------------060806030109010703090603
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 02/24/2020 02:04 PM, Simon G4ELI via USRP-users wrote:
>
> Hi All,
>
> A user cannot ‘see’ his E310 using 3.15 LTS compiled from source by 
> me. The E310 is connected by Ethernet GigE.
>
> I’m wondering if there’s something special needed or if there’s a 
> magic option I should enable in the source – the ENABLE_E300 option is 
> checked, all looks good to me.
>
> There is a second person who will soon be testing just in case it’s 
> finger trouble.
>
> Simon Brown, G4ELI
>
> https://www.sdr-radio.com
>
>
Are you running the network mode program on the E310 while doing this?



--------------060806030109010703090603
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 02/24/2020 02:04 PM, Simon G4ELI via
      USRP-users wrote:<br>
    </div>
    <blockquote cite="mid:220001d5eb45$43fe7cc0$cbfb7640$@sdr-radio.com"
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">Hi All,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">A user cannot ‘see’ his E310 using 3.15 LTS
          compiled from source by me. The E310 is connected by Ethernet
          GigE.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">I’m wondering if there’s something special
          needed or if there’s a magic option I should enable in the
          source – the ENABLE_E300 option is checked, all looks good to
          me.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">There is a second person who will soon be
          testing just in case it’s finger trouble.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><span style="mso-fareast-language:EN-GB">Simon
            Brown, G4ELI<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="mso-fareast-language:EN-GB"><a class="moz-txt-link-freetext" href="https://www.sdr-radio.com">https://www.sdr-radio.com</a><o:p></o:p></span></p>
        <br>
      </div>
    </blockquote>
    Are you running the network mode program on the E310 while doing
    this?<br>
    <br>
    <br>
  </body>
</html>

--------------060806030109010703090603--


--===============1798483476439231734==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1798483476439231734==--

