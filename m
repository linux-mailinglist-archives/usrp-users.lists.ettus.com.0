Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5724B18B1A
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 16:01:28 +0200 (CEST)
Received: from [::1] (port=50166 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOjbz-0000QK-3h; Thu, 09 May 2019 10:01:27 -0400
Received: from mail-qt1-f171.google.com ([209.85.160.171]:36005)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <patchvonbraun@gmail.com>)
 id 1hOjbQ-0008AD-L5
 for usrp-users@lists.ettus.com; Thu, 09 May 2019 10:01:22 -0400
Received: by mail-qt1-f171.google.com with SMTP id a17so1330338qth.3
 for <usrp-users@lists.ettus.com>; Thu, 09 May 2019 07:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=dQ2/nyUTvb2+tePngSAk31hf3B815p5hv78OtbEPQzg=;
 b=l+I6K3NN3wKQfnkzhrGdmsLddjOVHqA5EYcX8QVKsnKdU6hIW50Pj6WvWfPL5ywPK9
 lNoqdSY/Nu4HbRT/THz5QEDjvtFUy28A4mLhe4B2E6jkBkUVLbh/yVWXoVbSTrHsKW4C
 pni2FYtHbpHrsH8O6fjU2jO843esvPdw/D7hoMs0d8Bh8AnaCOdS6hJgExm4nr/0399c
 F/G3QZxFAs11Sv48p3AAM/+iSlNqLt8LE/1z1NWiZTcsBS+gmKYa4ZRWeekA50Acywin
 UusC4K0M7Q04l0VSANKVN6A0MPPcsEggFyA3pBpihQ6+X145fWi9Sf1jO9HBamwWhCQB
 0ybA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=dQ2/nyUTvb2+tePngSAk31hf3B815p5hv78OtbEPQzg=;
 b=J8zMLbuLfnQV2qUOPxDODyOc+TlFTrcYVNM3Bvd7d558z17TEWxmxQv/UNn6+9Dk3U
 7AG/xsYNyZhr5g5L7F93KLhkrRN1RD9xia9nYRi9mIDkWuILVjERD5rTbubgXr/9Lhk+
 ijWeGu8GPYx6+0IwTtyUcaXH/uZ3NAlMyIDOk2iPuPgjFODLUg7GfXIWcsKVYMVQWYmb
 mM2ZC9G+P8RGaa7TPtD/VyfEj1sBQzxpxzCPKARg89EdFgwFnd1e2fvP2C2m69RVmPv1
 bFeKk6efiSHho2QLVNjE9oZ6f1323pvE06YzTYs6+qQCkoLOj+cIEdfE3DHWz8BmN8XQ
 e1rA==
X-Gm-Message-State: APjAAAXjDYCf2bUeVcje8qtR6zLR7nF0sE49UWyA0I/1P1KcuVQJDjJi
 4M0J4YeYKfsc+AOyxAWFtYtf/kB5P4M=
X-Google-Smtp-Source: APXvYqze2O0Z/WmB5vkb4GWXnYWxzmL1fYayS6lTemZ/dP4QFB9s9ZiqUctY1iGUFCxb4JXvpD2iKQ==
X-Received: by 2002:ac8:17ec:: with SMTP id r41mr3892213qtk.262.1557410411900; 
 Thu, 09 May 2019 07:00:11 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id s55sm1155902qte.17.2019.05.09.07.00.10
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 07:00:11 -0700 (PDT)
Message-ID: <5CD4326A.1050705@gmail.com>
Date: Thu, 09 May 2019 10:00:10 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <467ab47ac30943458c17957c0f605687@TELMBXC13BA020.telecomitalia.local>
In-Reply-To: <467ab47ac30943458c17957c0f605687@TELMBXC13BA020.telecomitalia.local>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Configuration in sysctl.conf
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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
Content-Type: multipart/mixed; boundary="===============7155705735384535999=="
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
--===============7155705735384535999==
Content-Type: multipart/alternative;
 boundary="------------080408070708040707070107"

This is a multi-part message in MIME format.
--------------080408070708040707070107
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 05/09/2019 08:25 AM, Disco Daniele via USRP-users wrote:
>
> Hi!
>
> I’m using a X310 on a linux box UBUNTU 18.04
>
> Executing the command “uhd_usrp_probe”
>
> I obtain a lot of [WARNING][UDP] related to the dimension of the send 
> buffer
>
> Then there is the sentence:
>
> Please run: sudo sysctl -w net.core.wmem_max=24862979
>
> So I’ve written in the file /etc/sysctl.conf, at the end
>
> net.core.wmem_max=24862979
>
> I restarted the host but rerunning uhd_usrp_probe I reobtain the same 
> warning.
>
> Could you help me?
>
> PS: Now I’m using a 10GB Ethernet board plugged in the workstation, 
> using a couple of fiber optics between the X310 and the work station
>
> Thank you
>
Perhaps you have a syntax error in your sysctl file?


> _____________________________________________**
>
> logo1
>
> Direzione e Coordinamento Vivendi SA
>
> *
> **Daniele Disco*
> *CT.TA.EI*
>
>
> Via Reiss Romoli, 274 – 10148 Torino
> tel . +39 011 228 7271
> cell. +39 331 600 1113
>
> Fax. +39 06 4186 5196
> Tim Official: *Facebook* <https://www.facebook.com/TimOfficialPage> - 
> *Twitter* <https://twitter.com/tim_official>
> *www.tim.it* <http://www.tim.it/>
>
> Questo messaggio e i suoi allegati sono indirizzati esclusivamente 
> alle persone indicate. La diffusione, copia o qualsiasi altra azione 
> derivante dalla conoscenza di queste informazioni sono rigorosamente 
> vietate. Qualora abbiate ricevuto questo documento per errore siete 
> cortesemente pregati di darne immediata comunicazione al mittente e di 
> provvedere alla sua distruzione, Grazie.
>
> /This e-mail and any attachments is confidential and may contain 
> privileged information intended for the addressee(s) only. 
> Dissemination, copying, printing or use by anybody else is 
> unauthorised. If you are not the intended recipient, please delete 
> this message and any attachments and advise the sender by return 
> e-mail, Thanks. /
>
> *Rispetta l'ambiente. Non stampare questa mail se non è necessario.*
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------080408070708040707070107
Content-Type: multipart/related;
 boundary="------------010900040402080701000401"


--------------010900040402080701000401
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 05/09/2019 08:25 AM, Disco Daniele
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:467ab47ac30943458c17957c0f605687@TELMBXC13BA020.telecomitalia.local"
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
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
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
	margin:70.85pt 2.0cm 2.0cm 2.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"><span lang="EN-US">Hi!<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">I’m using a X310 on a
            linux box UBUNTU 18.04<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">Executing the command
            “uhd_usrp_probe”<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">I obtain a lot of
            [WARNING][UDP] related to the dimension of the send buffer<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">Then there is the
            sentence:<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">Please run: sudo sysctl
            -w net.core.wmem_max=24862979<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">So I’ve written in the
            file /etc/sysctl.conf, at the end<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">net.core.wmem_max=24862979<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">I restarted the host but
            rerunning uhd_usrp_probe I reobtain the same warning.<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">Could you help me?<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">PS: Now I’m using a 10GB
            Ethernet board plugged in the workstation, using a couple of
            fiber optics between the X310 and the work station<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">Thank you</span></p>
      </div>
    </blockquote>
    Perhaps you have a syntax error in your sysctl file?<br>
    <br>
    <br>
    <blockquote
cite="mid:467ab47ac30943458c17957c0f605687@TELMBXC13BA020.telecomitalia.local"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"><span lang="EN-US"><o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"
          style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"><span
style="font-size:7.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#012169;mso-fareast-language:IT">_____________________________________________</span><b><span
style="font-size:10.0pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#DA291C;mso-fareast-language:IT"><o:p></o:p></span></b></p>
        <p class="MsoNormal"><span
style="font-size:7.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#012169;mso-fareast-language:IT"
            lang="EN-US"><img style="width:.5937in;height:.1875in"
              id="Immagine_x0020_5"
              src="cid:part1.03040001.09020708@gmail.com" alt="logo1"
              height="18" width="57"></span><span
style="font-size:7.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#012169;mso-fareast-language:IT"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:7.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#012169;mso-fareast-language:IT">Direzione
            e Coordinamento Vivendi SA<o:p></o:p></span></p>
        <p class="MsoNormal"><b><span
style="font-size:7.5pt;font-family:&quot;Verdana&quot;,sans-serif;mso-fareast-language:IT"><br>
            </span></b><b><span
style="font-size:7.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#012169;mso-fareast-language:IT">Daniele
              Disco</span></b><span
style="font-size:7.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#012169;mso-fareast-language:IT"><br>
            <b>CT.TA.EI</b><o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:7.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#012169;mso-fareast-language:IT"><br>
            Via Reiss Romoli, 274 – 10148 Torino<br>
            tel . </span><span
style="font-size:7.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#012169;mso-fareast-language:IT"
            lang="EN-US">+39 011 228 7271<br>
            cell. +39 331 600 1113<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:7.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#012169;mso-fareast-language:IT"
            lang="EN-US">Fax. +39 06 4186 5196<br>
            Tim Official: <a moz-do-not-send="true"
              href="https://www.facebook.com/TimOfficialPage"
              target="_blank">
              <b><span style="color:#012169">Facebook</span></b></a> - <a
              moz-do-not-send="true"
              href="https://twitter.com/tim_official" target="_blank">
              <b><span style="color:#012169">Twitter</span></b></a><br>
            <a moz-do-not-send="true" href="http://www.tim.it/"
              target="_blank"><b><span style="color:#012169">www.tim.it</span></b></a></span><span
            style="mso-fareast-language:IT" lang="EN-US"><o:p></o:p></span></p>
        <p class="MsoNormal"><span style="mso-fareast-language:IT"
            lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
      </div>
      <table style="width:600px;">
        <tbody>
          <tr>
            <td style="width:585px; font-family: Verdana;
              font-size:7.5pt; color:#000; text-align: justify"
              width="395"> Questo messaggio e i suoi allegati sono
              indirizzati esclusivamente alle persone indicate. La
              diffusione, copia o qualsiasi altra azione derivante dalla
              conoscenza di queste informazioni sono rigorosamente
              vietate. Qualora abbiate ricevuto questo documento per
              errore siete cortesemente pregati di darne immediata
              comunicazione al mittente e di provvedere alla sua
              distruzione, Grazie. <br>
              <br>
              <i> This e-mail and any attachments is confidential and
                may contain privileged information intended for the
                addressee(s) only. Dissemination, copying, printing or
                use by anybody else is unauthorised. If you are not the
                intended recipient, please delete this message and any
                attachments and advise the sender by return e-mail,
                Thanks. </i> <br>
              <br>
              <b>Rispetta l'ambiente. Non stampare questa mail se non è
                necessario.</b> </td>
          </tr>
        </tbody>
      </table>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------010900040402080701000401
Content-Type: image/jpeg
Content-Transfer-Encoding: base64
Content-ID: <part1.03040001.09020708@gmail.com>

/9j/4AAQSkZJRgABAQEAYABgAAD/4QPARXhpZgAATU0AKgAAAAgADwD+AAQAAAABAAAAAAEA
AAQAAAABAAADMwEBAAQAAAABAAABzAECAAMAAAADAAAAwgEDAAMAAAABAAUAAAEGAAMAAAAB
AAIAAAERAAQAAABcAAAAyAEVAAMAAAABAAMAAAEWAAQAAAABAAAABQEXAAQAAABcAAACOAEa
AAUAAAABAAADqAEbAAUAAAABAAADsAEcAAMAAAABAAEAAAEoAAMAAAABAAIAAAE9AAMAAAAB
AAIAAAAAAAAACAAIAAgAAAAIAAADGQAABaQAAAfvAAAKlAAADVcAAA9QAAARSQAAFAYAABdX
AAAalAAAHgkAACE5AAAjcAAAJaYAAChhAAArbAAALaUAADADAAAzjgAANEsAADUIAAA1xQAA
NoIAADc/AAA3/AAAOLkAADl2AAA6MwAAOvAAADutAAA8agAAPScAAD3kAAA+oQAAP14AAEAb
AABA2AAAQZUAAEJSAABDDwAAQ8wAAESJAABFRgAARgMAAEbAAABHfQAASDoAAEj3AABJtAAA
SnEAAEsuAABL6wAATKgAAE1lAABOIgAATt8AAE+cAABQWQAAURYAAFHTAABSkAAAU00AAFQK
AABUxwAAVYQAAFZBAABW/gAAV7sAAFh4AABZNQAAWfIAAFqvAABbbAAAXCkAAFzmAABdowAA
XmAAAF8dAABf2gAAYJcAAGFUAABiEQAAYs4AAGOLAABkSAAAZQUAAGXCAABmfwAAZzwAAGf5
AABotgAAAxEAAAKLAAACSwAAAqUAAALDAAAB+QAAAfkAAAK9AAADUQAAAz0AAAN1AAADMAAA
AjcAAAI2AAACuwAAAwsAAAI5AAACXgAAA4sAAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9
AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAA
AL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9
AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAA
AL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9
AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAF3AAAA
A+gAAXcAAAAD6P/bAEMAAgEBAgEBAgICAgICAgIDBQMDAwMDBgQEAwUHBgcHBwYHBwgJCwkI
CAoIBwcKDQoKCwwMDAwHCQ4PDQwOCwwMDP/bAEMBAgICAwMDBgMDBgwIBwgMDAwMDAwMDAwM
DAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDP/AABEIABIAOQMBIgAC
EQEDEQH/xAAfAAABBQEBAQEBAQAAAAAAAAAAAQIDBAUGBwgJCgv/xAC1EAACAQMDAgQDBQUE
BAAAAX0BAgMABBEFEiExQQYTUWEHInEUMoGRoQgjQrHBFVLR8CQzYnKCCQoWFxgZGiUmJygp
KjQ1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoOEhYaHiImKkpOUlZaX
mJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4eLj5OXm5+jp6vHy8/T1
9vf4+fr/xAAfAQADAQEBAQEBAQEBAAAAAAAAAQIDBAUGBwgJCgv/xAC1EQACAQIEBAMEBwUE
BAABAncAAQIDEQQFITEGEkFRB2FxEyIygQgUQpGhscEJIzNS8BVictEKFiQ04SXxFxgZGiYn
KCkqNTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqCg4SFhoeIiYqSk5SV
lpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2dri4+Tl5ufo6ery8/T1
9vf4+fr/2gAMAwEAAhEDEQA/APZvGX7JHwf8Y/GHWYF/bw1iDV9X124iXT1u53eKeW5YC34u
QGKu2zgAccAdKufG3/gmr4D/AGbvGUXh7x5+274m8K63PZpfpZX8txHK0DvIiSAfavulopAD
/sGucg/an/ZPb9qpNPj/AGbfEMHiD/hNDaJfvqhjWO8/tAoJzHn5QJPn2dhxXt3/AAWM+Pf7
P3wy/a70/Tfil8F9Y+IXiZ/Cdlcxapa6kbeOK0a7vljg2Z6q6TNnv5g9K+R9nh3SnU9y6a6z
tr313P7K/tXiSlmmByyH1pQq0pS5fY4LnfKlZw93l5V15nzWtY900H9jCx/aZ/4JU+H/AIV+
Dvjp4i1CwuTHNafEPT5pZby8EOotcOoInV9oZWgx5vyqmOcYr8xv2Zf+CfXjP9o7/gor8Wvg
JJ+0H8UtIt/htaXFxFraaneyyX5iubeDDQ/awEyJieGP3RX7Hf8ABNzxZ4Q8b/sSeANW8BeF
LvwR4SvbWd9P0W5YtJZr9qmDksfvB5A8gb+ISA96+E/+CZ0Mq/8ABw1+1S3kzBBpl/lzGwXn
UrHbyRjnBx64OOlfrvCGa4jD5ZiYUpJKNNSjonaV4K6um9uj/M/ifxCwEavEMniFLmdeopXf
LLebtJQagpX35dL6LQm13XPEXgj/AIOUPg94MHizxRd6JZeEfss1o+q3Is70x6Df/vJLfzDG
zM6LIcg/MA2cgGvl/wDYc/bt8Wfs7/8ABZvW/wDhIfFPirUPAPizxzqvg/U4dQ1e5urKza5v
ZVs5FSWQxxmOdYhkAYiaTHAxX0/8Vo5T/wAHVHwwPkz7P+EcnYv5TbAP7C1IZ3YxjOBnPU46
18x/s5/sMap+35rX7bHgvQRbWfi+w8ZW2s+HbnUGltbaK7i1O/3o8oRmUSQPIuVBKs0bYO3B
+wwcsIsN/taXJLD0k3ppzTkub5Xv30PhsQsS66WHbvGtUaWuvLFO3z27XNX/AILEftyeKvin
/wAFVND8N+FvE3ijSPCPw117S/DbDS9VubK3u9RN1FJdlxDIquy7liwwyPLcdDX7yV+A37cn
7Evin9jH4bfs5Wfju5tta+Jfjz4rX3iXxTf2DyXcNxdT3dtsUSmNGc7cuSVB3TOAMAV+/NfL
8WfVlhMHDC25Yqcbr7XLJJy+bu16nvcPfWPrGJlib8zcXb+W62+XXzGOP3dIg4/E0UV8SfUC
H73+fSlHKA9zRRUoQDiMfWhh8v1oopRLBO/tRRRVxJe5/9k=
--------------010900040402080701000401--

--------------080408070708040707070107--


--===============7155705735384535999==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7155705735384535999==--

