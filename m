Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 737AF24EDFC
	for <lists+usrp-users@lfdr.de>; Sun, 23 Aug 2020 17:46:22 +0200 (CEST)
Received: from [::1] (port=44012 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k9sCI-0007AI-1y; Sun, 23 Aug 2020 11:46:18 -0400
Received: from mail-qk1-f177.google.com ([209.85.222.177]:36969)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k9sCE-00074X-9E
 for usrp-users@lists.ettus.com; Sun, 23 Aug 2020 11:46:14 -0400
Received: by mail-qk1-f177.google.com with SMTP id b14so5435467qkn.4
 for <usrp-users@lists.ettus.com>; Sun, 23 Aug 2020 08:45:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=vEQOH4zbroRN8GuAiBnxtQlKm8AjRS5uCbVMblDI3PQ=;
 b=faBhBzmBZNww4DKIrlD4bK5iy9PP89YJyvNVlYGQPL2wt3/B5x91satteh45HC1FxK
 73qljic6/WIYueF4uHqMcaWIERTpaIx+CQ6hK0MO9J9YRwqyY7d9I2Uga014ASXHQpQ0
 JcetzmXOlD7R/LfU15KQDuDlgqFBLdokvAppmgWRCwNN8RU1iHwZCDaX620oF8mv3THS
 /vYqMqbSHwTPfDBKhWUNIhDYNbL9JqaLRk+ZdBUS8Ko/pPHwzIbklob0t3RhyjxYei1D
 +02akwcvCCZ4A+E+7TQFUQA7K3MMBwIzQLamT73xBei1ETDZzoDQxelcOTXkDVBf3KfJ
 VE8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=vEQOH4zbroRN8GuAiBnxtQlKm8AjRS5uCbVMblDI3PQ=;
 b=cDc7cA1u9crgfGA3qBU012995EzOWYdrzVGDVwGeHr1X+8EC1YwPZyxp6xKm4/If4I
 m3JJuD43+0eEmTu2UzBXtwmEi+oNvkkqxM9G7qYsNjFR1wwdcQk+8A1ok7SUVyH7caHb
 FxG5NceYQTTjMOCUVaUd0LiEiwbchkn89caN/6GmvUmfOMi3tiJRkBlClfvDNYz0M0ob
 mrxthLFkZBTaULwWcDKlOIvPWbSXWV9pH0Qm3MQ322e5niDNdQaH0WcEp7q2ALc6c3jh
 dr4YyWr9u4pT6qioid3y5pv+DNCdDU0VRrvxDDR83PFyxrAPwk1/mzs23Onxr/Cnqul2
 MYsQ==
X-Gm-Message-State: AOAM5319pmSYnjdUu7REq0eH4Wvc874ZcqG88oFOyAKrXyl+wCUKUkCw
 RIRnBKtRIKbgPdBWRPJLKAIAjFbAS3fecQ==
X-Google-Smtp-Source: ABdhPJw3i/K9bTo75/CfBrAmXtBPKc0+1NZXOTyLik92sh4pHhQUKRri1OONMHNdyFaPLjwqUZZRfQ==
X-Received: by 2002:a37:9c6:: with SMTP id 189mr1406761qkj.122.1598197533595; 
 Sun, 23 Aug 2020 08:45:33 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id 103sm8741305qta.31.2020.08.23.08.45.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 23 Aug 2020 08:45:33 -0700 (PDT)
Message-ID: <5F428F1C.1030103@gmail.com>
Date: Sun, 23 Aug 2020 11:45:32 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Prasad <kpras@trilcomm.com>, usrp-users@lists.ettus.com
References: <53F074DDB8EF9CF2.b08124db-1501-4661-9a63-6aee26d65445@mail.outlook.com>
 <5F41C5B7.9030201@gmail.com> <000301d67948$f6b23a50$e416aef0$@com>
In-Reply-To: <000301d67948$f6b23a50$e416aef0$@com>
Subject: Re: [USRP-users] USRP B210: getting RX samples with gradually
 increase delay
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
Content-Type: multipart/mixed; boundary="===============8515598682334970885=="
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
--===============8515598682334970885==
Content-Type: multipart/alternative;
 boundary="------------010402070005020807070606"

This is a multi-part message in MIME format.
--------------010402070005020807070606
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/23/2020 08:28 AM, Prasad wrote:
>
> Dear Marcus,
>
> Verified the code couple of time even tested bypassing USRP and it 
> works fine.
>
> So, suspecting any time_spec either in RX or TX missing in the code?
>
> Regards,
>
> Prasad.
>
What is your sample rate?  Over what time scales do you see an apparent 
"time slip"?


> *From:*Marcus D. Leech [mailto:patchvonbraun@gmail.com]
> *Sent:* Sunday, August 23, 2020 6:56 AM
> *To:* kpras@trilcomm.com; usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] USRP B210: getting RX samples with 
> gradually increase delay
>
> On 08/22/2020 09:08 PM, kpras@trilcomm.com <mailto:kpras@trilcomm.com> 
> wrote:
>
>     Yes relative delay between samples in buffer.
>
>     While detecting SYNC signal of 5G periodically, it  detects
>     gradually increased delay from its expected position.
>
>     It means expected to receive at  2280 position of buffer but its
>     keep detecting away from expected position,
>     2281,2282,2284,........ and so on.
>
>     Thanks,
>
>     Prasad.
>
> My guess is that you have an off-by-one error in your 
> buffer-harvesting code.  This has nothing to do with the device.
>


--------------010402070005020807070606
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/23/2020 08:28 AM, Prasad wrote:<br>
    </div>
    <blockquote cite="mid:000301d67948$f6b23a50$e416aef0$@com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <meta name="Generator" content="Microsoft Word 12 (filtered
        medium)">
      <style>
<!--
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
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.Section1
	{page:Section1;}
-->
</style><!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext="edit">
  <o:idmap v:ext="edit" data="1" />
 </o:shapelayout></xml><![endif]-->
      <div class="Section1">
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Dear
            Marcus,<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p> </o:p></span></p>
        <div>
          <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Verified
              the code couple of time even tested bypassing USRP and
              it works fine.<o:p></o:p></span></p>
          <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">So,
              suspecting any time_spec either in RX or TX missing in the
              code?<o:p></o:p></span></p>
          <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p> </o:p></span></p>
          <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Regards,<o:p></o:p></span></p>
          <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Prasad.</span></p>
        </div>
      </div>
    </blockquote>
    What is your sample rate?  Over what time scales do you see an
    apparent "time slip"?<br>
    <br>
    <br>
    <blockquote cite="mid:000301d67948$f6b23a50$e416aef0$@com"
      type="cite">
      <div class="Section1">
        <div>
          <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p></o:p></span></p>
        </div>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p> </o:p></span></p>
        <div>
          <div style="border:none;border-top:solid #B5C4DF
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class="MsoNormal"><b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">From:</span></b><span
                style="font-size:10.0pt;font-family:
&quot;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext"> Marcus D.
                Leech
                [<a class="moz-txt-link-freetext" href="mailto:patchvonbraun@gmail.com">mailto:patchvonbraun@gmail.com</a>] <br>
                <b>Sent:</b> Sunday, August 23, 2020 6:56 AM<br>
                <b>To:</b> <a class="moz-txt-link-abbreviated" href="mailto:kpras@trilcomm.com">kpras@trilcomm.com</a>;
                <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                <b>Subject:</b> Re: [USRP-users] USRP B210: getting RX
                samples with gradually
                increase delay<o:p></o:p></span></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p> </o:p></p>
        <div>
          <p class="MsoNormal">On 08/22/2020 09:08 PM, <a
              moz-do-not-send="true" href="mailto:kpras@trilcomm.com">kpras@trilcomm.com</a>
            wrote:<o:p></o:p></p>
        </div>
        <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
          <p class="MsoNormal"><span style="color:#212121">Yes relative
              delay between
              samples in buffer.<o:p></o:p></span></p>
          <p class="MsoNormal"><span style="color:#212121">While
              detecting SYNC signal of
              5G periodically, it  detects gradually increased delay
              from its expected
              position.<o:p></o:p></span></p>
          <p class="MsoNormal"><span style="color:#212121">It means
              expected to receive
              at  2280 position of buffer but its keep detecting away
              from expected
              position, 2281,2282,2284,........ and so on.<o:p></o:p></span></p>
          <p class="MsoNormal"><span style="color:#212121"><o:p> </o:p></span></p>
          <p class="MsoNormal"><span style="color:#212121">Thanks,<o:p></o:p></span></p>
          <p class="MsoNormal"><span style="color:#212121">Prasad.<o:p></o:p></span></p>
          <p class="MsoNormal"><o:p> </o:p></p>
        </blockquote>
        <p class="MsoNormal" style="margin-bottom:12.0pt">My guess is
          that you have an
          off-by-one error in your buffer-harvesting code.  This has
          nothing to do
          with the device.<br>
          <br>
          <o:p></o:p></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------010402070005020807070606--


--===============8515598682334970885==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8515598682334970885==--

