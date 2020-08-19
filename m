Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE4624A1CB
	for <lists+usrp-users@lfdr.de>; Wed, 19 Aug 2020 16:33:40 +0200 (CEST)
Received: from [::1] (port=58904 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k8P9n-0001rF-TV; Wed, 19 Aug 2020 10:33:39 -0400
Received: from mail-qt1-f170.google.com ([209.85.160.170]:41079)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k8P9j-0001jY-DV
 for usrp-users@lists.ettus.com; Wed, 19 Aug 2020 10:33:35 -0400
Received: by mail-qt1-f170.google.com with SMTP id v22so17906358qtq.8
 for <usrp-users@lists.ettus.com>; Wed, 19 Aug 2020 07:33:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=BaHpNzLwJrG11hxeCEm8VEWjOv7ypq+dRlpjXt4GoE8=;
 b=kJU8dsJDB9yNn9w8SLsIjEl9317rAMw1xAgioLNQAYeHmsrs671Orf+GDz24FEmMLL
 ZdA9FZbeJ+CN0HCBVohNc+VPxyDzIHPNzVhtWxXJOnIbijCIx8T8T6V9OjBeOpNezHud
 jpWuCzyTtpIv5Q2ELTTWzTLpdESZtFSyuydoX/VRJHa/jykAlCZ5B7J5breUbV3TeRsQ
 RM1TrLyuMqLgdPDcIi+GB9LsjSNBF7IUKUI9g/CxOxLCTqij8CYox7rFVLNGQPqWfRel
 vtcQeSPjoYI73CrzKhO7iUUoQAGZ4el/kBTuceYmGRLDjjsKLR5mRqX94yx/xF2Wx4/H
 gPjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=BaHpNzLwJrG11hxeCEm8VEWjOv7ypq+dRlpjXt4GoE8=;
 b=Q2wWYE/PW6JjNrz+aAt+h/dy+bfWAvTAEXCTy35nLgTEZmfeY8LkT1aciaLnW3X0i9
 doRxUVnskVitqvwYVIU+Y4SqimUQu0mIGU2yydnbrZbq0Nt+MpC1zYtwhN+fmCODrOjV
 xfv3SVR5JcUU6EnSd39R8SC892FCGxJTT09e2EeODBay6my1fatc6ZLr8+vy2/9JSCD7
 EEE6tJ/8Y0E679spcP9+Q/wwtEcDVp4QjEM1P1D/JzAVe6sp5QTKSX86VSaAOKi4IQtQ
 cS4gbpfJjoxO9ff3wxZq+u42kFKsLsac72q0ilmX0KVA6bGqKIYFKYsJQ+XKryuHFmdV
 aKmw==
X-Gm-Message-State: AOAM531ZBLxAOljWxheZk2VrKSpViI0BtJQUYl7DGKbUmBrSIwvG7b9Y
 VvqKtUHvH2TYuq5HRoo8ygSeQucCfyZRXA==
X-Google-Smtp-Source: ABdhPJyjUtCB7Xv+qw+tDvzQsP1HfK2XYQerEwnJxYVetMwnXwd5rB1New3WGwFCGDwcnKJH1yw/Jg==
X-Received: by 2002:ac8:7b85:: with SMTP id p5mr22457571qtu.196.1597847574722; 
 Wed, 19 Aug 2020 07:32:54 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id o39sm28167123qtj.0.2020.08.19.07.32.54
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Aug 2020 07:32:54 -0700 (PDT)
Message-ID: <5F3D3815.7060406@gmail.com>
Date: Wed, 19 Aug 2020 10:32:53 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <MW3PR19MB426860A9432C6013CEDD969DC65D0@MW3PR19MB4268.namprd19.prod.outlook.com>
In-Reply-To: <MW3PR19MB426860A9432C6013CEDD969DC65D0@MW3PR19MB4268.namprd19.prod.outlook.com>
Subject: Re: [USRP-users] Running multiple USRP x310's on same PC causes
 network unreachable
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
Content-Type: multipart/mixed; boundary="===============4639653669471503638=="
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
--===============4639653669471503638==
Content-Type: multipart/alternative;
 boundary="------------040609050009060406080103"

This is a multi-part message in MIME format.
--------------040609050009060406080103
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 08/19/2020 10:28 AM, Jerrid Plymale via USRP-users wrote:
>
> Hi All,
>
> So I am having an issue with one of the USRP’s I am using where it, 
> after running for less than a couple minutes, will lose its network 
> connection to the PC. To be specific, I am running two USRP x310’s on 
> the same PC, each is connected to its own 10 Gig Ethernet port on the 
> PC, and both are using different IP addresses. I am running a 
> different GNU Radio Flowgraph on each, one of the USRP’s is just 
> transmitting, while the other is both transmitting and receiving. I 
> get two specific errors that pop up when the USRP that is transmitting 
> and receiving loses its network connection to the PC. The following 
> are the errors that are given:
>
> [ERROR][UHD] An unexpected exception was caught in a task loop. The 
> task loop will now exit, things may not work. EnvironmentalError: 
> IOError: “IP Address”: x300 fw communication failure #1 (will show 
> three of these errors, each one followed by the next error)
>
> EnvironmentalError: IOError: x300 fw poke32- reply timed out
>
> And sometimes the following is given at the end:
>
> EnvironmentalError: IOError: Send error on socket: Network unreachable
>
> Anyone know how to fix this issue? Any assistance would be greatly 
> appreciated.
>
> Best Regards,
>
> Jerrid
>
>
>
Is this on Windows or Linux?

Does unplugging and re-plugging the cable help, or do you have to 
power-cycle the USRP?   Does it only happen to one USRP--that is, does the
  problem follow the USRP, or the cable, or the network port?




--------------040609050009060406080103
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/19/2020 10:28 AM, Jerrid Plymale
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:MW3PR19MB426860A9432C6013CEDD969DC65D0@MW3PR19MB4268.namprd19.prod.outlook.com"
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle19
	{mso-style-type:personal-compose;
	font-family:"Times New Roman",serif;
	color:black;}
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
        <div>
          <p class="MsoNormal" style="background:white"><span
              style="font-size:12.0pt;color:black">Hi All,<o:p></o:p></span></p>
          <p class="MsoNormal" style="background:white"><span
              style="font-size:12.0pt;color:black"><o:p> </o:p></span></p>
          <p class="MsoNormal" style="background:white"><span
              style="font-size:12.0pt;color:black">So I am having an
              issue with one of the USRP’s I am using where it, after
              running for less than a couple minutes, will lose its
              network connection to the PC. To be specific, I am running
              two USRP x310’s on the same PC, each is connected to its
              own 10 Gig Ethernet port on the PC, and both are using
              different IP addresses. I am running a different GNU Radio
              Flowgraph on each, one of the USRP’s is just transmitting,
              while the other is both transmitting and receiving. I get
              two specific errors that pop up when the USRP that is
              transmitting and receiving loses its network connection to
              the PC. The following are the errors that are given:<o:p></o:p></span></p>
          <p class="MsoNormal" style="background:white"><span
              style="font-size:12.0pt;color:black"><o:p> </o:p></span></p>
          <p class="MsoNormal" style="background:white"><span
              style="font-size:12.0pt;color:black">[ERROR][UHD] An
              unexpected exception was caught in a task loop. The task
              loop will now exit, things may not work.
              EnvironmentalError: IOError: “IP Address”: x300 fw
              communication failure #1 (will show three of these errors,
              each one followed by the next error)<o:p></o:p></span></p>
          <p class="MsoNormal" style="background:white"><span
              style="font-size:12.0pt;color:black">EnvironmentalError:
              IOError: x300 fw poke32- reply timed out<o:p></o:p></span></p>
          <p class="MsoNormal" style="background:white"><span
              style="font-size:12.0pt;color:black"><o:p> </o:p></span></p>
          <p class="MsoNormal" style="background:white"><span
              style="font-size:12.0pt;color:black">And sometimes the
              following is given at the end:<o:p></o:p></span></p>
          <p class="MsoNormal" style="background:white"><span
              style="font-size:12.0pt;color:black"><o:p> </o:p></span></p>
          <p class="MsoNormal" style="background:white"><span
              style="font-size:12.0pt;color:black">EnvironmentalError:
              IOError: Send error on socket: Network unreachable
              <o:p></o:p></span></p>
          <p class="MsoNormal" style="background:white"><span
              style="font-size:12.0pt;color:black"><o:p> </o:p></span></p>
          <p class="MsoNormal" style="background:white"><span
              style="font-size:12.0pt;color:black">Anyone know how to
              fix this issue? Any assistance would be greatly
              appreciated.<o:p></o:p></span></p>
          <p class="MsoNormal" style="background:white"><span
              style="font-size:12.0pt;color:black"><o:p> </o:p></span></p>
          <p class="MsoNormal" style="background:white"><span
              style="font-size:12.0pt;color:black">Best Regards,<o:p></o:p></span></p>
          <p class="MsoNormal" style="background:white"><span
              style="font-size:12.0pt;color:black"><o:p> </o:p></span></p>
          <p class="MsoNormal" style="background:white"><span
              style="font-size:12.0pt;color:black">Jerrid<o:p></o:p></span></p>
        </div>
      </div>
      <br>
      <br>
    </blockquote>
    Is this on Windows or Linux?<br>
    <br>
    Does unplugging and re-plugging the cable help, or do you have to
    power-cycle the USRP?   Does it only happen to one USRP--that is,
    does the<br>
     problem follow the USRP, or the cable, or the network port?<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------040609050009060406080103--


--===============4639653669471503638==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4639653669471503638==--

