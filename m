Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A563AA70F
	for <lists+usrp-users@lfdr.de>; Thu, 17 Jun 2021 00:53:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3E5733844BA
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jun 2021 18:53:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=virginia.edu header.i=@virginia.edu header.b="HNBJ4T60";
	dkim-atps=neutral
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 074DC38451A
	for <usrp-users@lists.ettus.com>; Wed, 16 Jun 2021 18:52:42 -0400 (EDT)
Received: by mail-qv1-f44.google.com with SMTP id f5so632812qvu.8
        for <usrp-users@lists.ettus.com>; Wed, 16 Jun 2021 15:52:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=virginia.edu; s=google;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=Gtc+BiRKbPxtzcUip1/Wv2nFQ3VBNfoCP/iZ/bwhw4M=;
        b=HNBJ4T60piQhwxNqz4598beh+ykFssqePcha0fPvWLEeb9NI1hTxj8g4F44JVZzsaz
         Rs5iBMCAYir1UXQy5kN066cOcCOdxn+zrlKNgSPeukFvAffCDSf21vBLU4mOuxfFrO/R
         95A+l8JWG8+bFhDRDpfu5CV/6Y0EBsTpsEZmaRI//7BLK4iuQ5iwt5cC1MplPz1KRPIS
         ZUsyRuGIDIpVPJyG3I44wrvaJTSQuxrP3ztUQ5bwx+d5M/imyUqehBYfl2OW6EyWId1S
         6PsAKyGtnkiyoV95O/J6bA9EoPTW2FH82VoQWGgklfPKAOIbqFG/CDziRS9zDv9ytV9Y
         2X8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to;
        bh=Gtc+BiRKbPxtzcUip1/Wv2nFQ3VBNfoCP/iZ/bwhw4M=;
        b=qe00Oq62E2lrGhWHwOQDiGDEqok6v7CCb0xKfcKB7YLKQKD6adIGfJL2LXLcvkXBEF
         Q7s+Uq595/udRFD5QeiRgEPeOuLCPQpIYbEEs91gj/G5GVACMv5g9+r2FVEEIzYpwe7m
         PU9BDUOehhwzzTG5zLOWPNjSTJD9FX+0P9odteTn09we54/QxR1CULk35OEDmjLLJhaa
         M0XjG1aJh0lB04KPdgeXxtLIIHnHsKM3v8w8km2jJMEXQt7voUZMUuV/q2x/IX0AmC1i
         49+HR/PuWRU8cjkC2lySYF8LZftZRqns662dFl0nYLcIMMN92a2VbHHG+XWFKz9cFjzL
         IrMQ==
X-Gm-Message-State: AOAM531/Pkrgjn8pFYeLPOkY4KS7/NUkUIoTPRu38vZTdlO5D/HWQWzq
	69uYZGM7usDTg+J1XImgN01cOZly+cR57A==
X-Google-Smtp-Source: ABdhPJy0dsetQIVaJIM8hFNC6qJ7FHJ3iST0DqXivH8PQ87QtXj9DtGsJ5lsfPdHK9/Mak79YfwBhQ==
X-Received: by 2002:ad4:5bc7:: with SMTP id t7mr2458514qvt.3.1623883962294;
        Wed, 16 Jun 2021 15:52:42 -0700 (PDT)
Received: from [10.17.150.192] ([38.70.11.179])
        by smtp.gmail.com with ESMTPSA id e4sm2089821qte.3.2021.06.16.15.52.41
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jun 2021 15:52:41 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <ennj27wwYFEWXXNJu1B7vkFGp1uIiIFwxJA9U6LBKNY@lists.ettus.com>
From: Dustin Widmann <dw2zq@virginia.edu>
Organization: University of Virginia
Message-ID: <8ffc4ff2-ec88-4b62-2fbe-36691928bf86@virginia.edu>
Date: Wed, 16 Jun 2021 18:54:57 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <ennj27wwYFEWXXNJu1B7vkFGp1uIiIFwxJA9U6LBKNY@lists.ettus.com>
Message-ID-Hash: 6FWFGMRZAS4K7Z7YED2SZPCT3DBO4BMS
X-Message-ID-Hash: 6FWFGMRZAS4K7Z7YED2SZPCT3DBO4BMS
X-MailFrom: dw2zq@virginia.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: is there a UHD v4.0.0.0 for Ubuntu 20.04 LTS?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6FWFGMRZAS4K7Z7YED2SZPCT3DBO4BMS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0092673318901155499=="

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0092673318901155499==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="gepxBAAJBx37x62nduGCcyuM1yhh78Xqe"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--gepxBAAJBx37x62nduGCcyuM1yhh78Xqe
Content-Type: multipart/mixed; boundary="47tFeAIGkjEUxqW5nZSENSG0FEmwYCZV8";
 protected-headers="v1"
From: Dustin Widmann <dw2zq@virginia.edu>
To: usrp-users@lists.ettus.com
Message-ID: <8ffc4ff2-ec88-4b62-2fbe-36691928bf86@virginia.edu>
Subject: Re: [USRP-users] Re: is there a UHD v4.0.0.0 for Ubuntu 20.04 LTS?
References: <ennj27wwYFEWXXNJu1B7vkFGp1uIiIFwxJA9U6LBKNY@lists.ettus.com>
In-Reply-To: <ennj27wwYFEWXXNJu1B7vkFGp1uIiIFwxJA9U6LBKNY@lists.ettus.com>

--47tFeAIGkjEUxqW5nZSENSG0FEmwYCZV8
Content-Type: multipart/mixed;
 boundary="------------2E941C473A2A1DFE8F8C2486"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------2E941C473A2A1DFE8F8C2486
Content-Type: multipart/alternative;
 boundary="------------05EAB72CA5E25E87EFC5F9CE"


--------------05EAB72CA5E25E87EFC5F9CE
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

I would argue against trying to set up cross-compilation unless you want =

to cross compile big things often.

Simplest, most straightforward way to do it is to just build it on the=20
device you need to have it on. It takes patience, but unless the SBC in=20
question is extremely resource constrained (particularly, if it has less =

than 1GB of RAM), it should be pretty doable. If it is light on=20
resources, I recommend building with only one thread (make -j1), and=20
also adding a couple GB of swap space.=A0It may be slow, but so long as i=
t=20
doesn't fail because you run out of memory you'll be okay.

Another twist on that idea is to do a generic build on a sufficiently=20
similar (same generation of ARM, same version of OS), but more powerful, =

ARM SBC, tar the results and copy it over.

Those other options use the same workflow as any native build, so are=20
pretty easy. If you're set on trying to do it with cross compilation,=20
there are ready-made cross compilers available like the ones provided by =

Linaro, or you could roll your own using a tool like crosstool-ng. I=20
think there are some in the ubuntu repos also. You'll need to tweak your =

usual flow a little bit though with regards to doing cross compilation.=20
It will vary a bit based on what build system the projects in question=20
are using also ; UHD uses cmake, but if you need to build other things=20
too it's something to keep in mind. The tricky part is that it still=20
needs to link against the same version of libraries on the device, so=20
that will need to be available when building it. For that, I would=20
recommend using sshfs to mount the filesystem of the device, because the =

best way to target the device exactly is to just use what's already on=20
the device. As per what commands to run to make that happen, there isn't =

really something that's one-size-fits-all, but something like this might =

help give you a start:=20
https://www.96boards.org/documentation/guides/crosscompile/commandline.ht=
ml=20
In any case, I think you can see why I'd say that it shouldn't be your=20
first option unless you really need it.

Dustin
On 6/16/21 2:16 PM, paradis@kwesst.com wrote:
>
> alternately, is there a way to cross-compile the UHD v4.0.0.0=20
> libraries on my x86 machine but target the ARM processor on my SBC?
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------05EAB72CA5E25E87EFC5F9CE
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <p>I would argue against trying to set up cross-compilation unless
      you want to cross compile big things often. <br>
    </p>
    <p>Simplest, most straightforward way to do it is to just build it
      on the device you need to have it on. It takes patience, but
      unless the SBC in question is extremely resource constrained
      (particularly, if it has less than 1GB of RAM), it should be
      pretty doable. If it is light on resources, I recommend building
      with only one thread (make -j1), and also adding a couple GB of
      swap space.=A0It may be slow, but so long as it doesn't fail becaus=
e
      you run out of memory you'll be okay. <br>
    </p>
    <p>Another twist on that idea is to do a generic build on a
      sufficiently similar (same generation of ARM, same version of OS),
      but more powerful, ARM SBC, tar the results and copy it over. <br>
    </p>
    <p>Those other options use the same workflow as any native build, so
      are pretty easy. If you're set on trying to do it with cross
      compilation, there are ready-made cross compilers available like
      the ones provided by Linaro, or you could roll your own using a
      tool like crosstool-ng. I think there are some in the ubuntu repos
      also. You'll need to tweak your usual flow a little bit though
      with regards to doing cross compilation. It will vary a bit based
      on what build system the projects in question are using also ; UHD
      uses cmake, but if you need to build other things too it's
      something to keep in mind. The tricky part is that it still needs
      to link against the same version of libraries on the device, so
      that will need to be available when building it. For that, I would
      recommend using sshfs to mount the filesystem of the device,
      because the best way to target the device exactly is to just use
      what's already on the device. As per what commands to run to make
      that happen, there isn't really something that's
      one-size-fits-all, but something like this might help give you a
      start:
      <a class=3D"moz-txt-link-freetext"
href=3D"https://www.96boards.org/documentation/guides/crosscompile/comman=
dline.html">https://www.96boards.org/documentation/guides/crosscompile/co=
mmandline.html</a>=A0
      In any case, I think you can see why I'd say that it shouldn't be
      your first option unless you really need it. <br>
    </p>
    Dustin
    <div class=3D"moz-cite-prefix">On 6/16/21 2:16 PM, <a class=3D"moz-tx=
t-link-abbreviated" href=3D"mailto:paradis@kwesst.com">paradis@kwesst.com=
</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:ennj27wwYFEWXXNJu1B7vkFGp1uIiIFwxJA9U6LBKNY@lists.ettus=
=2Ecom">
      <meta http-equiv=3D"content-type" content=3D"text/html;
        charset=3Dwindows-1252">
      <p>alternately, is there a way to cross-compile the UHD v4.0.0.0
        libraries on my x86 machine but target the ARM processor on my
        SBC?</p>
      <p><br>
      </p>
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

--------------05EAB72CA5E25E87EFC5F9CE--

--------------2E941C473A2A1DFE8F8C2486
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

--------------2E941C473A2A1DFE8F8C2486--

--47tFeAIGkjEUxqW5nZSENSG0FEmwYCZV8--

--gepxBAAJBx37x62nduGCcyuM1yhh78Xqe
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsD5BAABCAAjFiEEDP6vCQH/R1JrFNrohXBr6kJTBrUFAmDKgUEFAwAAAAAACgkQhXBr6kJTBrWA
5QwA4k5kwtUVDa+l36NQfY0HvcX3KJRsCoR95khKHzOvE8JTTTkIbHoWGHOvgfpzRkHirS//yQp3
6IVtP9trXjDk7zippFvhHzUj4t7bkO5L/7ML/ogmS88wR7Yg3vR8gNST//SrF9W4G5R0dH/EwdwE
M/PU/HB/YDQPywiq9YOzCcCs0jLn3O4wCkpH7YYmhfSoL8gQpRnIEouui4iJdH/9qhX6AvTbhrOw
OmJ1lE6xi+D8VyKprNEWmVxHJOsa2GBfUrA6g7HcdNO1RVqllUevzmzUnWPnpIEwzitHjXbf6HtA
ycZb4xvVZFp9V7NAhLFBYqJdT/F/JqS11G62Nbz7ftaiMVJi8igd6VtK50R/ay4gMZdZoRI3aCrO
suCInUMnGh5h6REtgoOePeo+pUqdZuBRPSGzWUjkItq4vXFhfuOy7CjhkcTaz9CioI9PPBsLIJEx
jWOxxZdDRCeNIrsNAZhkGbnHZ0jKlO0jtxKlnESb9NkJJ4ksryzcr1hLkzEh
=EfGQ
-----END PGP SIGNATURE-----

--gepxBAAJBx37x62nduGCcyuM1yhh78Xqe--

--===============0092673318901155499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0092673318901155499==--
