Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F24362240
	for <lists+usrp-users@lfdr.de>; Fri, 16 Apr 2021 16:30:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8254C38477F
	for <lists+usrp-users@lfdr.de>; Fri, 16 Apr 2021 10:30:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bGDj1BdL";
	dkim-atps=neutral
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 1078A38427F
	for <USRP-users@lists.ettus.com>; Fri, 16 Apr 2021 10:30:00 -0400 (EDT)
Received: by mail-qk1-f170.google.com with SMTP id x11so28942565qkp.11
        for <USRP-users@lists.ettus.com>; Fri, 16 Apr 2021 07:30:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=EfdWgwp0BAydcoTRQywNiLWskIOccXMC852UiW5Dv2s=;
        b=bGDj1BdLQAZFvxuHNurT9OqEKVjHx8kuIUnz9SDNXqIqKnRozr7LCNv5j/jLjsYpy2
         Y9MZaZ37UfQB043db1AuoqWVhccQJBH6e0m6DU+jxgcT6COcS4hDY5w5BWVr8X4jEKpk
         OYQds7Em6GC22vb1Z1VEDFOgFMvO2cefoYKnvPFJqW5Eq7Gb2FiSHHWJGyU51DvyZvji
         fkcTvFkn1QkYnvGjWOKEI/TkYwJcgDZYN/oZEFvh4GwLh769WGwtpgBuG8chlxG6UB6T
         9h+9tsi5+LCqVb+Vf0zpYEexnNxfZyqGOa8Wy/nN5S+A/M9Ymygvy/4vNY9hLoNI3KFW
         RnAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=EfdWgwp0BAydcoTRQywNiLWskIOccXMC852UiW5Dv2s=;
        b=gqyTxv6a5twpVDdNH6rsrPbd+JWV2jU+GRV2BXMjsjrZa2CESQs2lK2f6ezYymYWHH
         W3LE5g9VPZP6LOjZdugrWqBOODkngT7rv/wExLgd34NFz80F/R5ErdlAg4mqCehcfvJS
         J/AE/DWBF+jxzeE68OQSZu9Km5jGbOZ/q9VS/FnAzOMAVFn/ia5zc8KNyOUQwcPWvcIS
         DFDbqarCvO9lRPBQq5AgE09ivZuC8FduPNa4HVfchbyUPV/gNI/B9F6zwja8isE/Pive
         R0tcM2wfKWjIq40rnKTsUnFURzNZaKI3Zfy4FeHF5MFxO8DCyZAqUi6W+3hSLjWCif/4
         Svog==
X-Gm-Message-State: AOAM531B++1/izyq+zouVevMcDiqNEn0/Pp3R6WhZNed6/AGQg7T/wNF
	f5HARTy5Hv9AL5cSTn/YqAY=
X-Google-Smtp-Source: ABdhPJxoNeAPqcwrqY++I3WqXacXpXce1S66iokCDW/ZZOJJGXjtYFj7nvjoRMXdka9BBUxQ9NYQZw==
X-Received: by 2002:a37:7c42:: with SMTP id x63mr9248890qkc.239.1618583400587;
        Fri, 16 Apr 2021 07:30:00 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id h79sm1844235qke.129.2021.04.16.07.30.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 07:30:00 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 16 Apr 2021 10:29:59 -0400
Message-Id: <6CF7CB58-79D9-465E-8899-ECF8E5DF8369@gmail.com>
References: <f793b948-4761-d1dc-5d7f-7829e10d5520@gmail.com>
In-Reply-To: <f793b948-4761-d1dc-5d7f-7829e10d5520@gmail.com>
To: page heller <pageheller@gmail.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: GDUBSJDH6WOOFE3PW3XN3OJBY6ZOIBSY
X-Message-ID-Hash: GDUBSJDH6WOOFE3PW3XN3OJBY6ZOIBSY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Calling C++ UHD functions from Python
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GDUBSJDH6WOOFE3PW3XN3OJBY6ZOIBSY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6890016142813212199=="


--===============6890016142813212199==
Content-Type: multipart/alternative; boundary=Apple-Mail-C27870FD-5A27-479D-A36F-266D536C0D4D
Content-Transfer-Encoding: 7bit


--Apple-Mail-C27870FD-5A27-479D-A36F-266D536C0D4D
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Wrapping C++ for Python usage is a very common thing to want to do in the Py=
thon world.=20

UHD and GnuRadio have used Swig in the past and now use pybind11 in the late=
st codebases.=20

https://realpython.com/python-bindings-overview/



Sent from my iPhone

> On Apr 16, 2021, at 9:16 AM, page heller <pageheller@gmail.com> wrote:
>=20
> =EF=BB=BF
> Yes. That is what we are doing. For instance, you may make your C++ execut=
able then call it like a command from Python3. Here, I call a custom command=
 b210col, then display thumbnails of the captured channels. I have a differe=
nt version for the pi which repeats the command call five times with a 3 sec=
ond delay between (for the pi 4). -page
>=20
> #!/bin/bash
> #
> # This program captures a file containing data from
> # an Ettus Research B210, two channels Rx
> sudo rm /mnt/ramdisk/2021-*
> sudo rm /mnt/ramdisk/RF*
> cd '/mnt/ramdisk'
> sudo /home/page/workarea/uhd/host/build4/b210col -g 30. -c 150000 -f 2462e=
+06
> python3 /home/page/esi/graphram.py
> cd '/home/page/'
> echo end bash
>=20
>=20
> On 4/15/21 9:23 PM, brendan.horsfield@vectalabs.com wrote:
>> Hi there,
>>=20
>> I am trying to measure some short bursts of Rx data with my B210 at a fai=
rly high sampling rate. I need to perform this operation repeatedly, ideally=
 several times per second. The advice I have received from Ettus is that thi=
s task is best implemented using C++.
>>=20
>> The problem is that this task is part of a bigger project written entirel=
y in Python. It is not feasible to re-write the entire project in C++ just t=
o be able to talk to the B210.
>>=20
>> My question is: Is there a relatively painless way that I can create a C+=
+ function to perform the desired USRP measurement, and then call this funct=
ion from Python?
>>=20
>> Thanks,
>>=20
>> Brendan.
>>=20
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-C27870FD-5A27-479D-A36F-266D536C0D4D
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Wrapping C++ for Python usage is a very com=
mon thing to want to do in the Python world.&nbsp;<div><br></div><div>UHD an=
d GnuRadio have used Swig in the past and now use pybind11 in the latest cod=
ebases.&nbsp;</div><div><br></div><div><a href=3D"https://realpython.com/pyt=
hon-bindings-overview/">https://realpython.com/python-bindings-overview/</a>=
</div><div><br></div><div><br><br><div dir=3D"ltr">Sent from my iPhone</div>=
<div dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 16, 2021, at 9:16 AM, p=
age heller &lt;pageheller@gmail.com&gt; wrote:<br><br></blockquote></div><bl=
ockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF
 =20
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
 =20
 =20
    <p>Yes. That is what we are doing. For instance, you may make your
      C++ executable then call it like a command from Python3. Here, I
      call a custom command b210col, then display thumbnails of the
      captured channels. I have a different version for the pi which
      repeats the command call five times with a 3 second delay between
      (for the pi 4). -page<br>
    </p>
    <p>#!/bin/bash<br>
      #<br>
      # This program captures a file containing data from<br>
      # an Ettus Research B210, two channels Rx<br>
      sudo rm /mnt/ramdisk/2021-*<br>
      sudo rm /mnt/ramdisk/RF*<br>
      cd '/mnt/ramdisk'<br>
      sudo /home/page/workarea/uhd/host/build4/b210col -g 30. -c 150000
      -f 2462e+06<br>
      python3 /home/page/esi/graphram.py<br>
      cd '/home/page/'<br>
      echo end bash<br>
      <br>
    </p>
    <div class=3D"moz-cite-prefix">On 4/15/21 9:23 PM,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:brendan.horsfield=
@vectalabs.com">brendan.horsfield@vectalabs.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:wQmTx3SzaskwQtIvV7IftyXjH7d1u4LQrr=
uiii4@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html;
        charset=3Dwindows-1252">
      <p>Hi there,</p>
      <p>I am trying to measure some short bursts of Rx data with my
        B210 at a fairly high sampling rate. I need to perform this
        operation repeatedly, ideally several times per second. The
        advice I have received from Ettus is that this task is best
        implemented using C++. </p>
      <p>The problem is that this task is part of a bigger project
        written entirely in Python. It is not feasible to re-write the
        entire project in C++ just to be able to talk to the B210.</p>
      <p>My question is: Is there a relatively painless way that I can
        create a C++ function to perform the desired USRP measurement,
        and then call this function from Python?</p>
      <p>Thanks,</p>
      <p>Brendan. </p>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">_______________________________=
________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"mai=
lto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" href=3D=
"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</=
a>
</pre>
    </blockquote>
 =20

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-C27870FD-5A27-479D-A36F-266D536C0D4D--

--===============6890016142813212199==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6890016142813212199==--
