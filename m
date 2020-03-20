Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A3E18C577
	for <lists+usrp-users@lfdr.de>; Fri, 20 Mar 2020 03:49:14 +0100 (CET)
Received: from [::1] (port=60748 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jF7if-0001EZ-7Q; Thu, 19 Mar 2020 22:49:09 -0400
Received: from mail-qk1-f181.google.com ([209.85.222.181]:42304)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jF7ib-00011S-0w
 for usrp-users@lists.ettus.com; Thu, 19 Mar 2020 22:49:05 -0400
Received: by mail-qk1-f181.google.com with SMTP id e11so5481646qkg.9
 for <usrp-users@lists.ettus.com>; Thu, 19 Mar 2020 19:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=eP+DJT6JpLEny6ESJkvh9LvMsnKtjr17YuXd0ph+Nrw=;
 b=GbGGVAprxZpfyACWHNLFUZoX0YQClcBdfnuowPVOIMqnoUx5KJtCi9fbCfJYvb+4vl
 v6U0zIrvgHw/0aVfveQHiyYMUGXZC8CSdgD6Dblk37JVxm9TRgVK9zQsfGM2SbvmG9CG
 ZVYUssu10Mt+uxIYVEkCvoYEuLekBhQvQYmFgntXzTzGplAy38IVxUQ/XcsM/G9Igrdv
 U9xqEQPBtucZ+HJ4J02WXc8nMkvbzJ4aBzD7y+8R1JHAtH0CCxgioqHtEM/Tjd3JjpRe
 VqM/nhEi23fEpWAm8/UX3GXn4YkdZCaPKROVd5Xt57N4KUSc9OwTUJk5j8oXih2zrcDH
 jdeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=eP+DJT6JpLEny6ESJkvh9LvMsnKtjr17YuXd0ph+Nrw=;
 b=jabIQJZgqjtgl+RT8rADhWSiJQE9bfhlQdMxaaZj07IXKW5t/demoFTtjoDxYxw4Uf
 QXE0sIhrpHWi/+XrHfHpe+Tie5MjkJ/y3xmKkSEzcjvIeVlE8gVc6Op5k077vfZT6XWJ
 3Duum6HQSHi+Qcucx8OePs/tJ34LwE8W4pvWmmwe5MLYtkuZ4pjR1Jd1UEP+QVcZ01YF
 HQFhm5yBVEvEPq1Se69JijBgFPHISzbFGdZh1LzQUafuhw8MjbIhv3L62GD3IIiH5/5t
 P9ahz+cyNxvBetKRhzbfj9LMoThtIOOodvX7r4y+C1XuhrCXtr7OiTyRGB3AAei8ZGt3
 6Bkg==
X-Gm-Message-State: ANhLgQ2qFAtIOK0AEIJKhzopjaoOIwLX4521S0rl139oXqwhUfCfopLq
 1f5yquIPKBnevA5YYDIIuUYTkqLj
X-Google-Smtp-Source: ADFU+vslecUwf2yyEJlzgy1kMpUOwf9S81iIlpdIo1JMDKON2uhQtKoAwXo2I0K3e0SsDr/SUpAC8w==
X-Received: by 2002:a37:92c4:: with SMTP id u187mr5772300qkd.466.1584672504161; 
 Thu, 19 Mar 2020 19:48:24 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-12-204.dsl.bell.ca.
 [174.95.12.204])
 by smtp.googlemail.com with ESMTPSA id n21sm2705120qtn.17.2020.03.19.19.48.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 19 Mar 2020 19:48:23 -0700 (PDT)
Message-ID: <5E742EF6.6020803@gmail.com>
Date: Thu, 19 Mar 2020 22:48:22 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "Carmichael, Ryan" <Ryan.Carmichael@dynetics.com>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <10F7328F6AD1354BA6DD787687B66B9001A304FD2A@Maui.in.dynetics.com>
In-Reply-To: <10F7328F6AD1354BA6DD787687B66B9001A304FD2A@Maui.in.dynetics.com>
Subject: Re: [USRP-users] MTU Issues after upgrading to UHD 3.15.0
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
Content-Type: multipart/mixed; boundary="===============4987404845434030425=="
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
--===============4987404845434030425==
Content-Type: multipart/alternative;
 boundary="------------090104050803030405040005"

This is a multi-part message in MIME format.
--------------090104050803030405040005
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 03/19/2020 09:17 PM, Carmichael, Ryan via USRP-users wrote:
>
> I have 4 SFI/SFP+ NICs, shown below (Intel 82599ES), although right 
> now I only have two of them connected to anything (the X310 in question)
>
> 0b:00.0 Ethernet controller: Intel Corporation 82599ES 10-Gigabit 
> SFI/SFP+ Network Connection (rev 01)
>
> 0b:00.1 Ethernet controller: Intel Corporation 82599ES 10-Gigabit 
> SFI/SFP+ Network Connection (rev 01)
>
> 0d:00.0 Ethernet controller: Intel Corporation 82599ES 10-Gigabit 
> SFI/SFP+ Network Connection (rev 01)
>
> 0d:00.1 Ethernet controller: Intel Corporation 82599ES 10-Gigabit 
> SFI/SFP+ Network Connection (rev 01)
>
> Although I’m only testing with 1 right now, I have 2 X310s connected, 
> each with two SFP+. IPs of one radio is 192.168.40.2/30.2 and the 
> other radio is 192.168.130.1/140.1.
>
> I do have another non-10Gb card connected to a separate device with a 
> 192 subnet.
>
> Ifconfig for the 192.x devices is:
>
> inet 192.168.130.99  netmask 255.255.255.0  broadcast 192.168.130.255
>
> inet 192.168.140.98  netmask 255.255.255.0  broadcast 192.168.140.255
>
> inet 192.168.30.99  netmask 255.255.255.0  broadcast 192.168.30.255
>
> inet 192.168.40.99  netmask 255.255.255.0  broadcast 192.168.40.255
>
> inet 192.168.122.1  netmask 255.255.255.0  broadcast 192.168.122.255
>
> The NICs are direct connected to the radios via the SFP+ so don’t 
> think the IP stack could be sending the data to the X310s any other 
> way (or is there something else I should check?). The args we pass 
> into  uhd::usrp::multi_usrp::make are:
>
> addr=192.168.30.2, second_addr=192.168.40.2,send_frame_size=9000
>
>
*Might be useful to do a ping -s 8500 to the X310, and see if it works.

*

--------------090104050803030405040005
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 03/19/2020 09:17 PM, Carmichael,
      Ryan via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:10F7328F6AD1354BA6DD787687B66B9001A304FD2A@Maui.in.dynetics.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	color:black;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	color:black;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	color:black;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Consolas",serif;
	color:black;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle22
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
      <div class="WordSection1">
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">I
            have 4 SFI/SFP+ NICs, shown below (Intel 82599ES), although
            right now I only have two of them connected to anything (the
            X310 in question)<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">0b:00.0
            Ethernet controller: Intel Corporation 82599ES 10-Gigabit
            SFI/SFP+ Network Connection (rev 01)<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">0b:00.1
            Ethernet controller: Intel Corporation 82599ES 10-Gigabit
            SFI/SFP+ Network Connection (rev 01)<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">0d:00.0
            Ethernet controller: Intel Corporation 82599ES 10-Gigabit
            SFI/SFP+ Network Connection (rev 01)<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">0d:00.1
            Ethernet controller: Intel Corporation 82599ES 10-Gigabit
            SFI/SFP+ Network Connection (rev 01)<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Although
            I’m only testing with 1 right now, I have 2 X310s connected,
            each with two SFP+. IPs of one radio is 192.168.40.2/30.2
            and the other radio is 192.168.130.1/140.1.<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">I
            do have another non-10Gb card connected to a separate device
            with a 192 subnet.
            <o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Ifconfig
            for the 192.x devices is:<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">inet
            192.168.130.99  netmask 255.255.255.0  broadcast
            192.168.130.255<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">inet
            192.168.140.98  netmask 255.255.255.0  broadcast
            192.168.140.255<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">inet
            192.168.30.99  netmask 255.255.255.0  broadcast
            192.168.30.255<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">inet
            192.168.40.99  netmask 255.255.255.0  broadcast
            192.168.40.255<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">inet
            192.168.122.1  netmask 255.255.255.0  broadcast
            192.168.122.255<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">The
            NICs are direct connected to the radios via the SFP+ so
            don’t think the IP stack could be sending the data to the
            X310s any other way (or is there something else I should
            check?). The args we pass into  uhd::usrp::multi_usrp::make
            are:<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">addr=192.168.30.2,
            second_addr=192.168.40.2,send_frame_size=9000<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <br>
      </div>
    </blockquote>
    <b>Might be useful to do a ping -s 8500 to the X310, and see if it
      works.<br>
      <br>
    </b>
  </body>
</html>

--------------090104050803030405040005--


--===============4987404845434030425==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4987404845434030425==--

