Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DBAC23AB45B
	for <lists+usrp-users@lfdr.de>; Thu, 17 Jun 2021 15:11:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2A102384926
	for <lists+usrp-users@lfdr.de>; Thu, 17 Jun 2021 09:11:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=virginia.edu header.i=@virginia.edu header.b="V4oWWkuW";
	dkim-atps=neutral
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 95655384743
	for <usrp-users@lists.ettus.com>; Thu, 17 Jun 2021 09:10:06 -0400 (EDT)
Received: by mail-qt1-f169.google.com with SMTP id r7so4588135qta.12
        for <usrp-users@lists.ettus.com>; Thu, 17 Jun 2021 06:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=virginia.edu; s=google;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=hV7mLH1lrdWZumuKMbpN3xEzLo87IKFhUjr5LIKCpCY=;
        b=V4oWWkuWRQJhLxE8LXi3tD8BsA7D9mXMNvDBXr2L4QUFLdY0fMxz0EL9exsH9TFhbs
         x6OpNIQaZXpwvoXbK5cvq8m/bH1KHyqL7InFnSC9Ois2besBEe40YSRZFUXschhgaxQw
         S/FKvuPBamti5+TRbXr7u3p8tyUGTMolmJobdJHAVwq4Pv+lS5+oJzCYN9+p0iWMg6gb
         6x94jPv5aa46LfXUfLzFRaZRU/dszFUuko7s30yyL9+cCJ4V8gmzZVm8lO8YT+aKJ3XU
         lfsE1Xlz5ayDFOC679JwM8fNeokui7nnEyUexIej4qm/AIA2Bp/RJkIaBCnXy1elU1Ic
         PDuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to;
        bh=hV7mLH1lrdWZumuKMbpN3xEzLo87IKFhUjr5LIKCpCY=;
        b=A6yOX8+4faWy6k3epbvUU/9/ip/1ZQxZrhgDyY2JA+63AATAoz+Fan/hf+WvE3Hgdl
         2/yZsOZKmx2U/t75x2jPP8zk6Og1ebAuk0s0eGs9+RZTovDMMVvxI9/CrhHw78qZJIvV
         n5s1nas9MC/jzrWqJ4D/mZywkrlVRkZdPw4sgvUO97ErnUIbHP5kFL3Y08yxqS99wlcf
         7nJVPSkz1r/f/+BOlDHMwj+y1GkG5x6ggkRz20pAV+x6SnfmC0XxXNNKtsgluvyk8yJy
         tkj9aeeqdXgulBgzwte/0sLcRMK63o9Vpwdq+2bRtV5GDoih9lq07RVUCWW0GzCcoWlQ
         56mw==
X-Gm-Message-State: AOAM531yQXRqZ+VFfkT5ca1vrQew43luDj+Ixukq9ZMyWF2C+klGRxBT
	7abzIabye4XPdiUSc+os141LrN1ZPKLhxA==
X-Google-Smtp-Source: ABdhPJx9P/Cti1iPJlXgJtWBFAMMCC/sPwaRZqhESH1/IIe+Tvtc6XwvZZBbF+wqaKtH1/+lJPehdQ==
X-Received: by 2002:a05:622a:392:: with SMTP id j18mr4121714qtx.195.1623935404851;
        Thu, 17 Jun 2021 06:10:04 -0700 (PDT)
Received: from [10.17.150.192] ([38.70.11.179])
        by smtp.gmail.com with ESMTPSA id g11sm914605qko.58.2021.06.17.06.10.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jun 2021 06:10:03 -0700 (PDT)
To: paradis@kwesst.com, usrp-users@lists.ettus.com
References: <U0gTUoNwxPMYniy9OA3CTOwefjyp6N4dsT1pl1HPWhE@lists.ettus.com>
From: Dustin Widmann <dw2zq@virginia.edu>
Organization: University of Virginia
Message-ID: <18889b2a-5892-06b0-d310-701825f934c3@virginia.edu>
Date: Thu, 17 Jun 2021 09:12:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <U0gTUoNwxPMYniy9OA3CTOwefjyp6N4dsT1pl1HPWhE@lists.ettus.com>
Message-ID-Hash: DDZLC4ODYVMA4SFA2YJXUX6LEHEVDRS5
X-Message-ID-Hash: DDZLC4ODYVMA4SFA2YJXUX6LEHEVDRS5
X-MailFrom: dw2zq@virginia.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: is there a UHD v4.0.0.0 for Ubuntu 20.04 LTS?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DDZLC4ODYVMA4SFA2YJXUX6LEHEVDRS5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6557402612339855131=="

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6557402612339855131==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="BQoYXD4aZO2QXXwNr73g0CN9h6kPDyNut"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--BQoYXD4aZO2QXXwNr73g0CN9h6kPDyNut
Content-Type: multipart/mixed; boundary="D4gbzM8hcfYX7eZK2JxXB52KcXACx2nFM";
 protected-headers="v1"
From: Dustin Widmann <dw2zq@virginia.edu>
To: paradis@kwesst.com, usrp-users@lists.ettus.com
Message-ID: <18889b2a-5892-06b0-d310-701825f934c3@virginia.edu>
Subject: Re: [USRP-users] Re: is there a UHD v4.0.0.0 for Ubuntu 20.04 LTS?
References: <U0gTUoNwxPMYniy9OA3CTOwefjyp6N4dsT1pl1HPWhE@lists.ettus.com>
In-Reply-To: <U0gTUoNwxPMYniy9OA3CTOwefjyp6N4dsT1pl1HPWhE@lists.ettus.com>

--D4gbzM8hcfYX7eZK2JxXB52KcXACx2nFM
Content-Type: multipart/mixed;
 boundary="------------D6C534ACFE7FAD185D21E432"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------D6C534ACFE7FAD185D21E432
Content-Type: multipart/alternative;
 boundary="------------244A18BA0E430EAD76B62964"


--------------244A18BA0E430EAD76B62964
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

Seeing as the swapfile is handled by the kernel, you don't need to do=20
anything else.

Dustin

On 6/17/21 8:59 AM, paradis@kwesst.com wrote:
>
> Philip Balister wrote:
>
>     The gcc killed message says the out of memory killer is killing
>     the compiler. Since you are in a hurry, add swap.
>
>     Philip
>
>
> I suspected as much, if I add a swap partition, does gcc just know to=20
> use it, or do i have to pass an argument of some sort to the makefile?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------244A18BA0E430EAD76B62964
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <p>Seeing as the swapfile is handled by the kernel, you don't need
      to do anything else. <br>
    </p>
    <p>Dustin<br>
    </p>
    <div class=3D"moz-cite-prefix">On 6/17/21 8:59 AM, <a class=3D"moz-tx=
t-link-abbreviated" href=3D"mailto:paradis@kwesst.com">paradis@kwesst.com=
</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:U0gTUoNwxPMYniy9OA3CTOwefjyp6N4dsT1pl1HPWhE@lists.ettus=
=2Ecom">
      <meta http-equiv=3D"content-type" content=3D"text/html;
        charset=3Dwindows-1252">
      <p>Philip Balister wrote:</p>
      <blockquote>
        <p>The gcc killed message says the out of memory killer is
          killing the compiler. Since you are in a hurry, add swap.</p>
        <p>Philip</p>
      </blockquote>
      <p><br>
      </p>
      <p>I suspected as much, if I add a swap partition, does gcc just
        know to use it, or do i have to pass an argument of some sort to
        the makefile?</p>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------244A18BA0E430EAD76B62964--

--------------D6C534ACFE7FAD185D21E432
Content-Type: application/pgp-keys;
 name="OpenPGP_0x85706BEA425306B5.asc"
Content-Transfer-Encoding: quoted-printable
Content-Description: OpenPGP public key
Content-Disposition: attachment;
 filename="OpenPGP_0x85706BEA425306B5.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

xsDNBF2l+AIBDADqoQEhcP5i2KgR+o9m70oPY9PZLDmWvOBuid7fIt1z/RrLGaN5wcp/YEWn6=
iqC
0nA+Vdh6mWq9MbJjqLFJCDllTzh5LFuP6MvDIqXECC8cZvzCNEeE8wZ4zBfIk6NC3yn2o+OPT=
oln
Emfb5JZlXEpsdTcZitotHRzh8AM/4WHp9SIraVL6KC74f7EXsTRHmr7hD/NqbyfWUAjjSrC7f=
N/E
XgetCjoyVYq4Qe/qCtjxPmQNvA37iKUJTU/oVnqDwa7h8Z0DUgvkhq01fChMpAx2+HjLumLG/=
vrk
gpSe+RWf2eSYKlDgNAbxAKGTyzhbleGxJLidOZKqvxm9a4D53hPKXuZGVMUSRXiJ8ZyqF7E8a=
Fij
S0/Q5zZtAE1208knZz/I45hg84KyLDXvdy6W/V3eYrMJsjUEuAMekEFX6OVB3egfvZWU7LeJb=
thM
UgURSuFS5ZBdYUDbqcdVQ9396NXWYUl/+Xyd34ECkGY3xarxGCe0jncXoFazNLYXy02XV+sAE=
QEA
Ac0lRHVzdGluIFdpZG1hbm4gPDFtLjBuLmYxcjNAZ21haWwuY29tPsLBDgQTAQgAOBYhBAz+r=
wkB
/0dSaxTa6IVwa+pCUwa1BQJdpfhUAhsjBQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJEIVwa=
+pC
Uwa157kMALyFytTYJZfPT5CiGtxNvVzpaPQm0AJ//sguXVBqRn1gqbZC+0g5IGxArFl7/md72=
Ilr
zXNk29NQm7X7smxQ5kOxnEH5OWJEuuSvQVP6L6ron8AfEc33ZV0GwZp6JBGyCnBNGMliBXSoN=
Hqf
A6D+joK6knWvaPzsHykep1tdTUOtYoDopxt6y+BkzmReonefVae/Hkh7xyj2HG/uzL/eeBGtf=
Zsk
2/xh34fAQmzMC2ajQBT7wKld/NvcoxYSijVEn+m7H/gNEVlasXsUPUbioPu4YMFjUlx3cO6iE=
b2P
V3ffHHuk5XT5EMdIAFS1QRGQAf8WAGmAJJX4vNS7o5f6quvDmWBoKUD6Um/xCNi1By/pG+C4U=
W1A
1JunvlF4uKgo+uo4ey70UoAEq7UxGztz3vZDgJXz/pmAS/e1hLLQHAZxH1c0TS1caqit1uCss=
LfA
ib/2GFZ+AijdRvqj06/gNLwUzV5HBmQ5ROGvYcnwSQwBMs714Hc0b9pQw2LYEmj2ns0jRHVzd=
Glu
IFdpZG1hbm4gPGR3MnpxQHZpcmdpbmlhLmVkdT7CwQ4EEwEIADgWIQQM/q8JAf9HUmsU2uiFc=
Gvq
QlMGtQUCXaX4OAIbIwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRCFcGvqQlMGtQ+hDADKz=
Uem
XAzKGm66/5SjLgaOztT1lX+zsSY9R8/TZtH+9FRdQEIs/jkfXWGbt/bYWKVdbM7Sx65W64jjG=
sDF
kk/YeCFPs9XAzYhoI69geQbWhewbgJrbfO9V5NZyKWfq7dzGJW6abtIELw/wFF7gu4YdKzXaX=
g/Q
5kHcjMfj9elJFV6OSq4A8Cz2BowXjilvRodBnCOTNzx9TqvbJHMvWuRWigMz6FfCNOGSTM7hN=
Qre
CWAwC4ubOutKJn1PlRVjnC1l5N2DqMDtpEW5TDzi7BNLVww921hvi9lkJp0fAj/cbs86Qeooe=
kwo
ppVmssTVwD3ZePM7quaxNYebJkkmxNnfJ1uGDTwvV+qtwm39GC46392GhB5aR7U2MJba3DrmT=
yDj
RfsthxYJ8r5kjQLFvNjUQk01WZ0v7TxAiVytOm0qOt9ijJfhbi/F5vH8c+gCxYE/+DLeoKMYs=
rDo
h2sIhDsCcXQsTXuOtiU3G2sUTqX4XbJ+CicUNxrNTf7IEv/d3ZTNJkR1c3RpbiBXaWRtYW5uI=
Dxk
dXN0aW5AYXJhZGlvY29ycC5jb20+wsEOBBMBCAA4FiEEDP6vCQH/R1JrFNrohXBr6kJTBrUFA=
l2l
+AICGyMFCwkIBwIGFQoJCAsCBBYCAwECHgECF4AACgkQhXBr6kJTBrUnygwA5mh1hZVht6mmu=
sxq
8SkWRyLePSv9XeSlmWLT70aqxE4DzNf/wHgZC1dVwGllVLtOuDTsubtg7GeFvL2UFzsnKTQY/=
ZNs
eOVM5eSJfeDW2NykEGBohfgz39ettr72GsZRwAOqMgO8cabrLHg6jj+6Bkm29WUPJez0OX0jL=
leT
ICFwTPl0CmdzUF4YD3BFNjRqjCBZbZrjLsATT0cNDJKNRVSgWGICJLSUHbGdnGIWjEA5s1LG0=
mQw
y4jDjT6myKlU5pGvQnYB4r+MkL9Q804B3AzFRmW19FXM4vodzC3w2Pbvi+40YiaIlblP0FWg9=
Sms
9tOP62OQ7xg9wcFSgke4z1uiVRTfK1/l/nDDnmeKxeTEF43lH0z4tYHzPLc9RZv485eFCoHI2=
QFq
hLAAA5c3KO1xU8mhuCB2arhooeA813LKR5WMW3XYn7OxoEq9BTgrt5SU3rU65oTdnk4NqBLTb=
QXz
vb6z09q8rhuzJzsTNA04vZ1ZDIC3U4rivUe24NdbzSlEdXN0aW4gV2lkbWFubiA8ZHVzdGluQ=
HRo
cmFjaWFuZ3JvdXAuY29tPsLBDgQTAQgAOBYhBAz+rwkB/0dSaxTa6IVwa+pCUwa1BQJdpfh9A=
hsj
BQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJEIVwa+pCUwa14GIMAM9ke6bH7eaZeukKz34S3=
7jr
VxFRkGO4I4eBTEm4kPolwIqvPfUHvC8POaeRX/h+OE6y4wH3LJbWcDf647JJn85xkZzWcpzqd=
XK/
GJclPNAng/gwCtOKnZeFS6LLBsGP6BwTfbx66B7CanYKyi5mmXXBDndMzaLaG8xsMs12Ck8oe=
llZ
BzMqpx9ygH7poGadUHQTMkdhCA96BBY5n20j0thAKemUG/I2oxQY83Fi27svqjhURj7UebdZY=
0F7
8hGsrvqAOCBn2OgA4ai93OxP6zEZw29g4LwgSfC6k+tvqgcHch4aFo0wupv5ejElukIKBl96x=
l3z
4r/+Cr/tiT9AxWsr8ntBGa3yLgSoEV/C4SJ9QXpFywDVosOdK+PbJUArM3I9/GBThOybW99sM=
4cW
JJuvnJzPcgtEYjQe7Bqg37vQJgcY1QIrGBcK81ZnYhZ3raxaY1cRv7+e3EiZZG7w3SIei0TMW=
ip8
lqVZIqEEWR8CcJ12+gSuCUisZhdxslsN0c7AzQRdpfgCAQwAxaw2Tyl4c2K1rI6HCQnRAoIaf=
Tlm
n1WXrYRjfuqcpFRF136by/dyWnbtBE1XU3RmQx5iCwTppJLapLjAGDh2XsBteLZjM1Dx/TsfX=
CON
9ZK2RAy+zkg+tKXHqB1CzzNEZ+qCeNaV67bQHCIcc4H4rxA419mUnlFVo/OGBwKzh744Eut38=
jTd
B8lfwKXqnBxCewTdBAodEJOd05ZiDG321qjXWQQgL0eVLTp1aT0Ee5NrToY9ulpQHVuLhBqc3=
5bi
uvf6uUArmBx7pCrSQuGn0oDWqECGGtpGvspFwQ6K5L4B/gzQvjuU+ihimTslmUhQyfFlnlax/=
I4X
fTTbGuPK7Uhi/ptM3ZCYN4/VP9M3vjEroh7L2tJVPRh5pz5MAybRjBWNqrKEdaNGOGLsL27ME=
050
GSajMkeA7xrGKL0owSShquw9G73Jfrab4MEEyH8D+8a/yBuej2XDYPWGjzZsBE2HzpPQx/Omd=
byT
5gu/P+qYNrOV+i5XoV3z8YLHdJt9ABEBAAHCwPYEGAEIACAWIQQM/q8JAf9HUmsU2uiFcGvqQ=
lMG
tQUCXaX4AgIbDAAKCRCFcGvqQlMGtRz+C/0TVLTOG0ePf4cxooaXC4rUbY7s8jfzc4Q0EHYaB=
YWl
5YH8Xut8yylxpuOjq0y9CWeACe+2Cy7wjiB9+VWwjp02nLRqgWMQDmFW9K83clsffhVVaGbvO=
vDN
96jMeyg16saEcTdLmTCpzYiH6B4qCbVUpbw4R9vK/ePAjL46KL7+7vnE63TiKbtfcAXjHvIEN=
IUB
JuQcTd17z1dvbPskVldnhrtrCRePsGmftxaEMHr8xULCPDaVu9C3RATD1SspOhPBGlDtYrElh=
hjM
vQZmMStRefv0D6xjPCrAQ/1ytpL9LUibH6U9JgP7P3H7sHfkCtKX3Hl3vOhR27IqRwthZclrf=
pC/
P1+kz80PW/1Wg8NrmM58CorDLT1Ya4pVVLN3YPc8ubDqqVSG6V8DSqapy2syWzocDRRpybm++=
FOa
tYhzrlcKqEWZ2LvvAgFLvRHHL9JfBWzQLt6dstTncJpddXzvyy0tX9y1kQsrWRvzMVlPU968f=
Fgj
AVFjv2DtHhIC5Vw=3D
=3D6Vr3
-----END PGP PUBLIC KEY BLOCK-----

--------------D6C534ACFE7FAD185D21E432--

--D4gbzM8hcfYX7eZK2JxXB52KcXACx2nFM--

--BQoYXD4aZO2QXXwNr73g0CN9h6kPDyNut
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsD5BAABCAAjFiEEDP6vCQH/R1JrFNrohXBr6kJTBrUFAmDLSjEFAwAAAAAACgkQhXBr6kJTBrV+
hAwAsvPX+G5Adj6pEdx4b4zhJboP43eELmcPGGCqMo1peEJ16Za7OD8QWPwaDJW8SdQxP+lsX2EB
FG1YOMSFVwl7VRwuKNeDY7QJdQeLMdWDbCwt3SvYEL+Y4/Hv2SwKLYU/SYEzqnKp/A7QDuEQyAKe
f7kmRMduOIxuYx4b7Hi+cr7EI3M+k2e1N8hD2hYcKuZm6aiy83c54ccrG2fvXZDXM5SDq4ABnVnX
SYaUo1041zwDhSLapU7TuGdrPgOfMON4Iaoi57Bw8X5/V+93ECH76U22NQ7roklM4uT5Lyl2/bcq
gfpJWtjJr5EWrsTx9p5k6/GOyIqzEPwxzIsrJ5UACKKhrC9cBKvUpZ/ygtYLp7dvnwMa0cTuSx6W
2pM5CcoEI2Z0d/T629dGXBw1fW2ru7LlxhZgByEEWrTTf6a7/gEng5+5S+U2U5x+ajVMDbe9P2nR
YVqeRNLPNs0m8adoWq1cmN7RPGEUlYBNTnPHIqcCiWoyZoYkREY9a5SBDqCF
=KbvM
-----END PGP SIGNATURE-----

--BQoYXD4aZO2QXXwNr73g0CN9h6kPDyNut--

--===============6557402612339855131==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6557402612339855131==--
