Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2925330DF3D
	for <lists+usrp-users@lfdr.de>; Wed,  3 Feb 2021 17:10:29 +0100 (CET)
Received: from [::1] (port=58184 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l7Kja-0006qC-Rg; Wed, 03 Feb 2021 11:10:26 -0500
Received: from mail-qk1-f172.google.com ([209.85.222.172]:34426)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1l7KjX-0006gm-O4
 for usrp-users@lists.ettus.com; Wed, 03 Feb 2021 11:10:23 -0500
Received: by mail-qk1-f172.google.com with SMTP id t63so200859qkc.1
 for <usrp-users@lists.ettus.com>; Wed, 03 Feb 2021 08:10:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=OfvOKtPJS98Gbtm3SkctTZW5OQgepgH1ThkaGL3yZhI=;
 b=b6tteILp9ZTJWsMP7O62LGlNkdq+9cSEn0eIX36iyG2TzbyyGUGgUvyKCJ4X9ofyvT
 ECeABOJgTlc1xvzI7Go2yQm/+4M4BN+G5TYSsL33qtrdoknXhmsOxWd28KdTzSlXU35l
 SMicHUouImgCi3yXr/LFtUPTctxmNPX0X6hlIESUSNQ7jHaq5RaENxjLfk++8iqbM291
 8Ay8/yIYx3PdoaWDCbc8CW0Ll46tFRo2nM2OjInI9cuO3nYWuUtaC55eSwBQFDezMgbc
 GZWm7+2niDFKyaOhiatWRxjbC5cZ71gGoaE27qY7sKqjif86Dp10cGCG6P9S5tXbpStZ
 0o+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=OfvOKtPJS98Gbtm3SkctTZW5OQgepgH1ThkaGL3yZhI=;
 b=Bj2zvtzU/tYlYJiahXjD/Z+UcwikNW+Ul0dLK0OvFqRBcTaMTTGm0Lb38HzYQD8da4
 jh0wpLwDAysF7eYa33cX8qgyfT3Pc/yJbBMa4+RyIfUYQ31zwGizYwOtMo/MqchI+B1x
 FpmSGA4KEv06CPWF1boUg+CR+XnAQk1+If6/tBq2SBQHgJppUoff9ECgFtv+EabY67Zj
 hZOCxq1M5BL+2b9hzDFK51SvmetdplPXbX2x3pf340XaQM152Lr6LQrlzQ9Xo3mDKbJ+
 Oxa2bDJK9qAPEZP5ZfgTYJ8orY4xqyscJq/VAaeQmymMTpcZP/gtf4/4ofUTMgilccLk
 CUkQ==
X-Gm-Message-State: AOAM530JafLvCmqHwjg7/ch7nWNV+Ix4nHPytRcwAjOozS0oJ1nrtjSl
 PfsY1U4YKvweD5gnlHj+H1WXaSvB5vY=
X-Google-Smtp-Source: ABdhPJzDtduS5Ts6op8AYBC9mWZKSmVEEcD23JQj7BRyLM97vjCzW4QGwfWjMkX8+wSPyJlktHUzCA==
X-Received: by 2002:ae9:ddc4:: with SMTP id r187mr3162813qkf.391.1612368582237; 
 Wed, 03 Feb 2021 08:09:42 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id s23sm1969536qke.3.2021.02.03.08.09.41
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Feb 2021 08:09:41 -0800 (PST)
Message-ID: <601ACAC4.3050407@gmail.com>
Date: Wed, 03 Feb 2021 11:09:40 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <AM0P193MB030882ECBD91A33E06D06D28BDB49@AM0P193MB0308.EURP193.PROD.OUTLOOK.COM>
In-Reply-To: <AM0P193MB030882ECBD91A33E06D06D28BDB49@AM0P193MB0308.EURP193.PROD.OUTLOOK.COM>
Subject: Re: [USRP-users] GPSDO and PPS on USRP N300
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
Content-Type: multipart/mixed; boundary="===============4711734254001994226=="
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
--===============4711734254001994226==
Content-Type: multipart/alternative;
 boundary="------------000302060203000305020904"

This is a multi-part message in MIME format.
--------------000302060203000305020904
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 02/03/2021 02:31 AM, Puertas Blanco, Roberto via USRP-users wrote:
>
> Hello,
>
> Is there any way to get the PPS pulse from PS side  (ARM) in the USRP 
> N300? I would like to know if the PPS is mapped through the /dev/pps 
> or if it is embedded into GPSDO module.
>
> Thanks,
>
> Roberto
>
>
The answer (based on the version of the system image that I have) is 
no.  The PPS line does not "manifest" as /dev/pps on the ARM CPU.


> ------------------------------------------------------------------------
>
> Este correo electrónico y, en su caso, cualquier fichero anexo al 
> mismo, contiene información de carácter confidencial exclusivamente 
> dirigida a su destinatario o destinatarios. Si no es vd. el 
> destinatario indicado, queda notificado que la lectura, utilización, 
> divulgación y/o copia sin autorización está prohibida en virtud de la 
> legislación vigente. En el caso de haber recibido este correo 
> electrónico por error, se ruega notificar inmediatamente esta 
> circunstancia mediante reenvío a la dirección electrónica del remitente.
> Evite imprimir este mensaje si no es estrictamente necesario.
>
> This email and any file attached to it (when applicable) contain(s) 
> confidential information that is exclusively addressed to its 
> recipient(s). If you are not the indicated recipient, you are informed 
> that reading, using, disseminating and/or copying it without 
> authorisation is forbidden in accordance with the legislation in 
> effect. If you have received this email by mistake, please immediately 
> notify the sender of the situation by resending it to their email address.
> Avoid printing this message if it is not absolutely necessary.
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------000302060203000305020904
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 02/03/2021 02:31 AM, Puertas Blanco,
      Roberto via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:AM0P193MB030882ECBD91A33E06D06D28BDB49@AM0P193MB0308.EURP193.PROD.OUTLOOK.COM"
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
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EstiloCorreo17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">Hello, <o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><span lang="EN-US">Is there any way to get
            the PPS pulse from PS side  (ARM) in the USRP N300? I would
            like to know if the PPS is mapped through the /dev/pps or if
            it is embedded into GPSDO module.  <o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">Thanks,<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">Roberto<o:p></o:p></span></p>
      </div>
      <br>
    </blockquote>
    The answer (based on the version of the system image that I have) is
    no.  The PPS line does not "manifest" as /dev/pps on the ARM CPU.<br>
    <br>
    <br>
    <blockquote
cite="mid:AM0P193MB030882ECBD91A33E06D06D28BDB49@AM0P193MB0308.EURP193.PROD.OUTLOOK.COM"
      type="cite">
      <hr>
      <font color="Gray" face="Arial" size="1"><br>
        Este correo electrónico y, en su caso, cualquier fichero anexo
        al mismo, contiene información de carácter confidencial
        exclusivamente dirigida a su destinatario o destinatarios. Si no
        es vd. el destinatario indicado, queda notificado que la
        lectura, utilización, divulgación y/o copia sin autorización
        está prohibida en virtud de la legislación vigente. En el caso
        de haber recibido este correo electrónico por error, se ruega
        notificar inmediatamente esta circunstancia mediante reenvío a
        la dirección electrónica del remitente.<br>
        Evite imprimir este mensaje si no es estrictamente necesario.<br>
        <br>
        This email and any file attached to it (when applicable)
        contain(s) confidential information that is exclusively
        addressed to its recipient(s). If you are not the indicated
        recipient, you are informed that reading, using, disseminating
        and/or copying it without authorisation is forbidden in
        accordance with the legislation in effect. If you have received
        this email by mistake, please immediately notify the sender of
        the situation by resending it to their email address.<br>
        Avoid printing this message if it is not absolutely necessary.<br>
      </font>
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

--------------000302060203000305020904--


--===============4711734254001994226==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4711734254001994226==--

